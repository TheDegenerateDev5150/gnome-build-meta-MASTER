"""test_pinephone_image.py: Boots a disk image and tests that it works."""

import argparse
import asyncio
import asyncio.subprocess
import logging
import sys
import os
import signal

FAILURE_TIMEOUT = 1800  # seconds
BUFFER_SIZE = 80  # how many characters to read at once

DIALOGS = {
    'root-login':
    [
        'login:',
        'root',
        'Password:',
        'root',
        '#',
        'uname -a',
        '#',
        'sudo shutdown now',
        'Power down'

    ]
}


def argument_parser():
    parser = argparse.ArgumentParser(
        description="Test that PinePhone image works as expected")
    parser.add_argument('--dialog', dest='dialog', default='root-login',
                        help='dialog to follow\
                            (valid values {}, default: root-login)'
                        .format(DIALOGS.keys()))

    return parser


async def await_line(stream, marker):
    """Read from 'stream' until a line appears contains 'marker'."""
    marker = marker.encode("utf-8")
    buf = b""

    while not stream.at_eof():
        chunk = await stream.read(BUFFER_SIZE)
        sys.stdout.buffer.write(chunk)
        buf += chunk
        lines = buf.split(b'\n')
        for line in lines:
            if marker in line:
                try:
                    return line.decode("utf-8")
                except UnicodeDecodeError:
                    break
        buf = lines[-1]


async def run_test(command, dialog):
    dialog = DIALOGS[dialog]

    logging.debug("Starting process: {}", command)
    process = await asyncio.create_subprocess_exec(
        *command,
        stdin=asyncio.subprocess.PIPE,
        stdout=asyncio.subprocess.PIPE,
        start_new_session=True)

    success = False
    try:
        while dialog:
            prompt = await await_line(process.stdout, dialog.pop(0))

            assert prompt is not None
            if dialog:
                process.stdin.write(dialog.pop(0).encode('ascii') + b'\n')

        print("Test successful")
        success = True
    except asyncio.CancelledError:
        # Move straight to killing the process group
        pass
    finally:
        try:
            os.killpg(os.getpgid(process.pid), signal.SIGKILL)
        except ProcessLookupError:
            pass

    await process.communicate()
    await process.wait()
    return success


def fail_timeout(qemu_task):
    sys.stderr.write("Test failed as timeout of %i seconds was reached.\n" %
                     FAILURE_TIMEOUT)
    qemu_task.cancel()


def main():
    args = argument_parser().parse_args()

    command = ['qemu-system-aarch64', '-cpu', 'cortex-a57', '-M', 'virt', '-m',
               '4096', '--nographic', '-drive',
               'if=pflash,format=raw,file=QEMU_EFI.img',
               '-drive', 'if=pflash,file=varstore.img',
               '-drive', 'if=virtio,file=debian.img',
               '-drive', 'if=virtio,format=raw,file=disk.img']

    loop = asyncio.get_event_loop()
    qemu_task = loop.create_task(run_test(command, args.dialog))
    loop.call_later(FAILURE_TIMEOUT, fail_timeout, qemu_task)
    loop.run_until_complete(qemu_task)
    loop.close()

    if qemu_task.result():
        return 0
    return 1


result = main()
sys.exit(result)