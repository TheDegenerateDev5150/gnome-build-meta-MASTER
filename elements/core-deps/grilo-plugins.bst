kind: meson

sources:
- kind: git_repo
  url: gnome:grilo-plugins.git
  track: master
  ref: grilo-plugins-0.3.16-53-g335e0109e7219f7cec5ed62e360be9ec0af26846

build-depends:
- core-deps/localsearch.bst
- freedesktop-sdk.bst:components/itstool.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- core-deps/gnome-online-accounts.bst
- core-deps/gom.bst
- core-deps/grilo.bst
- core-deps/libmediaart.bst
- core-deps/totem-pl-parser.bst
- sdk/json-glib.bst
- sdk/libsoup.bst
- sdk/tinysparql.bst
- freedesktop-sdk.bst:bootstrap-import.bst

variables:
  meson-local: >-
    -Denable-lua-factory=no
    -Denable-tracker=no
    -Denable-tracker3=yes
