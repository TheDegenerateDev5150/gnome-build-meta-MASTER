kind: autotools

sources:
- kind: tar
  url: gnome_downloads:NetworkManager-openvpn/1.12/NetworkManager-openvpn-1.12.0.tar.xz
  ref: 903fd4c0aebd2aa7ac70c9d8c2bed8df922655d22d764514403566ae89b7e886
- kind: local
  path: files/NetworkManager-openvpn/sysusers.conf

build-depends:
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst

depends:
- sdk/gtk.bst
- sdk/libsecret.bst
- core-deps/libnma.bst
- core-deps/NetworkManager.bst
- gnomeos-deps/openvpn.bst

variables:
  conf-local: >-
    --with-gtk4

config:
  install-commands:
    (>):
    - |
      sysusersdir="$(pkg-config --variable=sysusersdir systemd)"
      install -Dm644 sysusers.conf "%{install-root}${sysusersdir}/nm-openvpn.conf"
