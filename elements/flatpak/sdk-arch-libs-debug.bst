kind: flatpak_image

build-depends:
- flatpak/sdk-image.bst
- freedesktop-sdk.bst:integration/debug-gl-dir.bst

config:
  directory: '%{debugdir}%{libdir}'
  include:
  - debug

  metadata:
    Runtime:
      name: org.gnome.Sdk.Compat.%{gcc_arch}.Debug
    ExtensionOf:
      ref: runtime/org.gnome.Sdk/%{gcc_arch}/%{flatpak-branch}
