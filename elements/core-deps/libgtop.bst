kind: autotools
sources:
- kind: git_repo
  url: gnome:libgtop.git
  track: master
  ref: 2.41.3-7-gba9a67d4ae967dd8c7bd4aaec49197d5569ff717
build-depends:
- sdk/gtk-doc.bst
- freedesktop-sdk.bst:components/texinfo.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-autotools.bst
depends:
- sdk/glib.bst
- freedesktop-sdk.bst:public-stacks/runtime-minimal.bst
environment:
  CC: gcc -std=c99
config:
  install-commands:
    (>):
    - rm "%{install-root}/usr/share/info/dir"
