kind: meson

sources:
- kind: git_repo
  url: gnome:simple-scan.git
  track: master
  ref: 48.0-46-g9fa0d8ee7ec6cd9560409fbbffd910ec0fbd6010

build-depends:
- sdk/vala.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/colord-gtk.bst
- core-deps/sane-backends.bst
- sdk/adwaita-icon-theme.bst
- sdk/gdk-pixbuf.bst
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
- freedesktop-sdk.bst:components/libgusb.bst
