kind: meson

sources:
- kind: git_repo
  url: gnome:gcr.git
  track: main
  ref: 4.4.0.1-3-g6d06552cb2cfcb71c20182c19b923dbdfb7bb801

build-depends:
- sdk/gi-docgen.bst
- sdk/gobject-introspection.bst
- sdk/vala.bst
- freedesktop-sdk.bst:components/systemd.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/glib.bst
- sdk/gtk.bst
- sdk/libsecret.bst
- freedesktop-sdk.bst:components/gnupg.bst
- freedesktop-sdk.bst:components/openssh.bst
- freedesktop-sdk.bst:components/p11-kit.bst
- freedesktop-sdk.bst:components/systemd-libs.bst
- freedesktop-sdk.bst:bootstrap-import.bst

public:
  bst:
    split-rules:
      devel:
        (>):
        - '%{libdir}/libgck-2.so'
        - '%{libdir}/libgcr-4.so'
        - '%{libdir}/libgcr-4-gtk3.so'
        - '%{libdir}/libgcr-4-gtk4.so'
