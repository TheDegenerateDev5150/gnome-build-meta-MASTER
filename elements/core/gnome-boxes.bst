kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-boxes.git
  track: main
  ref: 48.0-13-g5cbde9c4092f7ed8ae6b0697463e2197c4ef5ca9
- kind: git_module
  url: gnome_gitlab:felipeborges/libovf-glib.git
  path: subprojects/libovf-glib
  ref: 52d35970d385d0beda4b765a7264d77e79736549

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/libosinfo.bst
- core-deps/libportal.bst
- core-deps/libvirt-glib.bst
- core-deps/osinfo-db.bst
- core-deps/spice-gtk.bst
- sdk/adwaita-icon-theme.bst
- sdk/glib.bst
- sdk/gtk+-3.bst
- sdk/json-glib.bst
- sdk/libhandy.bst
- sdk/webkit2gtk-4.1.bst
- freedesktop-sdk.bst:components/libgudev.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst

variables:
  local_flags: >-
    -Wno-error=int-conversion
