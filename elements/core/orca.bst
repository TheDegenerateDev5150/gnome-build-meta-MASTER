kind: meson
sources:
- kind: git_repo
  url: gnome:orca.git
  track: main
  ref: 48.beta-10-g820f065757acf1f035ca406084ef6e7ee3f4e5b9
build-depends:
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst
depends:
- core-deps/pyatspi.bst
- core-deps/speech-dispatcher.bst
- sdk/at-spi2-core.bst
- sdk/gobject-introspection.bst
- sdk/gtk+-3.bst
- sdk/pygobject.bst
- sdk/yelp-tools.bst
- freedesktop-sdk.bst:bootstrap-import.bst
