kind: meson

sources:
- kind: git_repo
  url: gnome:gnome-tour.git
  track: main
  ref: 47.0-13-g4defb2ebff0d9169706fce7e0bc6f512ac5e0ccc
- kind: cargo2
  ref:
  - kind: registry
    name: aho-corasick
    version: 1.1.3
    sha: 8e60d3430d3a69478ad0993f19238d2df97c507009a52b3c10addcd7f6bcb916
  - kind: registry
    name: anstream
    version: 0.6.15
    sha: 64e15c1ab1f89faffbf04a634d5e1962e9074f2741eef6d97f3c4e322426d526
  - kind: registry
    name: anstyle
    version: 1.0.8
    sha: 1bec1de6f59aedf83baf9ff929c98f2ad654b97c9510f4e70cf6f661d49fd5b1
  - kind: registry
    name: anstyle-parse
    version: 0.2.5
    sha: eb47de1e80c2b463c735db5b217a0ddc39d612e7ac9e2e96a5aed1f57616c1cb
  - kind: registry
    name: anstyle-query
    version: 1.1.1
    sha: 6d36fc52c7f6c869915e99412912f22093507da8d9e942ceaf66fe4b7c14422a
  - kind: registry
    name: anstyle-wincon
    version: 3.0.4
    sha: 5bf74e1b6e971609db8ca7a9ce79fd5768ab6ae46441c572e46cf596f59e57f8
  - kind: registry
    name: autocfg
    version: 1.3.0
    sha: 0c4b4d0bd25bd0b74681c0ad21497610ce1b7c91b1022cd21c80c6fbdd9476b0
  - kind: registry
    name: bitflags
    version: 2.6.0
    sha: b048fb63fd8b5923fc5aa7b340d8e156aec7ec02f0c78fa8a6ddc2613f6f71de
  - kind: registry
    name: block
    version: 0.1.6
    sha: 0d8c1fef690941d3e7788d328517591fecc684c084084702d6ff1641e993699a
  - kind: registry
    name: cairo-rs
    version: 0.20.1
    sha: e8a0ea147c94108c9613235388f540e4d14c327f7081c9e471fc8ee8a2533e69
  - kind: registry
    name: cairo-sys-rs
    version: 0.20.0
    sha: 428290f914b9b86089f60f5d8a9f6e440508e1bcff23b25afd51502b0a2da88f
  - kind: registry
    name: cc
    version: 1.1.19
    sha: 2d74707dde2ba56f86ae90effb3b43ddd369504387e718014de010cec7959800
  - kind: registry
    name: cfg-expr
    version: 0.16.0
    sha: 345c78335be0624ed29012dc10c49102196c6882c12dde65d9f35b02da2aada8
  - kind: registry
    name: colorchoice
    version: 1.0.2
    sha: d3fd119d74b830634cea2a0f58bbd0d54540518a14397557951e79340abc28c0
  - kind: registry
    name: env_filter
    version: 0.1.2
    sha: 4f2c92ceda6ceec50f43169f9ee8424fe2db276791afde7b2cd8bc084cb376ab
  - kind: registry
    name: env_logger
    version: 0.11.5
    sha: e13fa619b91fb2381732789fc5de83b45675e882f66623b7d8cb4f643017018d
  - kind: registry
    name: equivalent
    version: 1.0.1
    sha: 5443807d6dff69373d433ab9ef5378ad8df50ca6298caf15de6e52e24aaf54d5
  - kind: registry
    name: field-offset
    version: 0.3.6
    sha: 38e2275cc4e4fc009b0669731a1e5ab7ebf11f469eaede2bab9309a5b4d6057f
  - kind: registry
    name: futures-channel
    version: 0.3.30
    sha: eac8f7d7865dcb88bd4373ab671c8cf4508703796caa2b1985a9ca867b3fcb78
  - kind: registry
    name: futures-core
    version: 0.3.30
    sha: dfc6580bb841c5a68e9ef15c77ccc837b40a7504914d52e47b8b0e9bbda25a1d
  - kind: registry
    name: futures-executor
    version: 0.3.30
    sha: a576fc72ae164fca6b9db127eaa9a9dda0d61316034f33a0a0d4eda41f02b01d
  - kind: registry
    name: futures-io
    version: 0.3.30
    sha: a44623e20b9681a318efdd71c299b6b222ed6f231972bfe2f224ebad6311f0c1
  - kind: registry
    name: futures-macro
    version: 0.3.30
    sha: 87750cf4b7a4c0625b1529e4c543c2182106e4dedc60a2a6455e00d212c489ac
  - kind: registry
    name: futures-task
    version: 0.3.30
    sha: 38d84fa142264698cdce1a9f9172cf383a0c82de1bddcf3092901442c4097004
  - kind: registry
    name: futures-util
    version: 0.3.30
    sha: 3d6401deb83407ab3da39eba7e33987a73c3df0c82b4bb5813ee871c19c41d48
  - kind: registry
    name: gdk-pixbuf
    version: 0.20.1
    sha: 8730751991b97419fc3f0c2dca2c9e45b48edf46e48e0f965964ecf33889812f
  - kind: registry
    name: gdk-pixbuf-sys
    version: 0.20.1
    sha: 1ffbf649fd5b1c8c0f0feeb015b7533c3ef92da2887fb95ddd338bc2b1644a7c
  - kind: registry
    name: gdk4
    version: 0.9.0
    sha: 4b7d7237c1487ed4b300aac7744efcbf1319e12d60d7afcd6f505414bd5b5dea
  - kind: registry
    name: gdk4-sys
    version: 0.9.0
    sha: a67576c8ec012156d7f680e201a807b4432a77babb3157e0555e990ab6bcd878
  - kind: registry
    name: gettext-rs
    version: 0.7.1
    sha: 4a6716b8a0db461a2720b850ba1623e5b69e4b1aa0224cf5e1fb23a0fe49e65c
  - kind: registry
    name: gettext-sys
    version: 0.21.4
    sha: f7b8797f28f2dabfbe2caadb6db4f7fd739e251b5ede0a2ba49e506071edcf67
  - kind: registry
    name: gio
    version: 0.20.1
    sha: dcacaa37401cad0a95aadd266bc39c72a131d454fc012f6dfd217f891d76cc52
  - kind: registry
    name: gio-sys
    version: 0.20.1
    sha: 5237611e97e9b86ab5768adc3eef853ae713ea797aa3835404acdfacffc9fb38
  - kind: registry
    name: glib
    version: 0.20.3
    sha: 95648aac01b75503000bb3bcaa5ec7a7a2dd61e43636b8b1814854de94dd80e4
  - kind: registry
    name: glib-macros
    version: 0.20.3
    sha: 302f1d633c9cdef4350330e7b68fd8016e2834bb106c93fdf9789fcde753c1ab
  - kind: registry
    name: glib-sys
    version: 0.20.2
    sha: 92eee4531c1c9abba945d19378b205031b5890e1f99c319ba0503b6e0c06a163
  - kind: registry
    name: gobject-sys
    version: 0.20.1
    sha: fa3d1dcd8a1eb2e7c22be3d5e792b14b186f3524f79b25631730f9a8c169d49a
  - kind: registry
    name: graphene-rs
    version: 0.20.1
    sha: 80aac87f74e81c0e13433e892a047237abdc37945c86887f5eed905038356e69
  - kind: registry
    name: graphene-sys
    version: 0.20.1
    sha: cc2f91ecd32989efad60326cc20a8fb252bd2852239a08e4e70cde8c100de9ca
  - kind: registry
    name: gsk4
    version: 0.9.0
    sha: 1f3cf2091e1af185b347b3450817d93dea6fe435df7abd4c2cd7fb5bcb4cfda8
  - kind: registry
    name: gsk4-sys
    version: 0.9.0
    sha: 6aa69614a26d8760c186c3690f1b0fbb917572ca23ef83137445770ceddf8cde
  - kind: registry
    name: gtk4
    version: 0.9.1
    sha: f4fe572bf318e5dbc6f5a2f8a25d853f1ae3f42768c0b08af6ca20a18f4057e1
  - kind: registry
    name: gtk4-macros
    version: 0.9.1
    sha: e9e7b362c8fccd2712297903717d65d30defdab2b509bc9d209cbe5ffb9fabaf
  - kind: registry
    name: gtk4-sys
    version: 0.9.0
    sha: 1114a207af8ada02cf4658a76692f4190f06f093380d5be07e3ca8b43aa7c666
  - kind: registry
    name: hashbrown
    version: 0.14.5
    sha: e5274423e17b7c9fc20b6e7e208532f9b19825d82dfd615708b70edd83df41f1
  - kind: registry
    name: heck
    version: 0.5.0
    sha: 2304e00983f87ffb38b55b444b5e3b60a884b5d30c0fca7d82fe33449bbe55ea
  - kind: registry
    name: humantime
    version: 2.1.0
    sha: 9a3a5bfb195931eeb336b2a7b4d761daec841b97f947d34394601737a7bba5e4
  - kind: registry
    name: indexmap
    version: 2.5.0
    sha: 68b900aa2f7301e21c36462b170ee99994de34dff39a4a6a528e80e7376d07e5
  - kind: registry
    name: is_terminal_polyfill
    version: 1.70.1
    sha: 7943c866cc5cd64cbc25b2e01621d07fa8eb2a1a23160ee81ce38704e97b8ecf
  - kind: registry
    name: lazy_static
    version: 1.5.0
    sha: bbd2bcb4c963f2ddae06a2efc7e9f3591312473c50c6685e1f298068316e66fe
  - kind: registry
    name: libadwaita
    version: 0.7.0
    sha: 2ff9c222b5c783729de45185f07b2fec2d43a7f9c63961e777d3667e20443878
  - kind: registry
    name: libadwaita-sys
    version: 0.7.0
    sha: 1c44d8bdbad31d6639e1f20cc9c1424f1a8e02d751fc28d44659bf743fb9eca6
  - kind: registry
    name: libc
    version: 0.2.158
    sha: d8adc4bb1803a324070e64a98ae98f38934d91957a99cfb3a43dcbc01bc56439
  - kind: registry
    name: locale_config
    version: 0.3.0
    sha: 08d2c35b16f4483f6c26f0e4e9550717a2f6575bcd6f12a53ff0c490a94a6934
  - kind: registry
    name: log
    version: 0.4.22
    sha: a7a70ba024b9dc04c27ea2f0c0548feb474ec5c54bba33a7f72f873a39d07b24
  - kind: registry
    name: malloc_buf
    version: 0.0.6
    sha: 62bb907fe88d54d8d9ce32a3cceab4218ed2f6b7d35617cafe9adf84e43919cb
  - kind: registry
    name: memchr
    version: 2.7.4
    sha: 78ca9ab1a0babb1e7d5695e3530886289c18cf2f87ec19a575a0abdce112e3a3
  - kind: registry
    name: memoffset
    version: 0.9.1
    sha: 488016bfae457b036d996092f6cb448677611ce4449e970ceaf42695203f218a
  - kind: registry
    name: objc
    version: 0.2.7
    sha: 915b1b472bc21c53464d6c8461c9d3af805ba1ef837e1cac254428f4a77177b1
  - kind: registry
    name: objc-foundation
    version: 0.1.1
    sha: 1add1b659e36c9607c7aab864a76c7a4c2760cd0cd2e120f3fb8b952c7e22bf9
  - kind: registry
    name: objc_id
    version: 0.1.1
    sha: c92d4ddb4bd7b50d730c215ff871754d0da6b2178849f8a2a2ab69712d0c073b
  - kind: registry
    name: pango
    version: 0.20.1
    sha: 5764e5a174a5a0ec054fe5962ce6d4fc7052e2d0dcc23bbc77202b40a4a403d3
  - kind: registry
    name: pango-sys
    version: 0.20.1
    sha: fd317e1de76b14b3d3efe05518c08b360327f1ab7fec150473a89ffcad4b072d
  - kind: registry
    name: pin-project-lite
    version: 0.2.14
    sha: bda66fc9667c18cb2758a2ac84d1167245054bcf85d5d1aaa6923f45801bdd02
  - kind: registry
    name: pin-utils
    version: 0.1.0
    sha: 8b870d8c151b6f2fb93e84a13146138f05d02ed11c7e7c54f8826aaaf7c9f184
  - kind: registry
    name: pkg-config
    version: 0.3.30
    sha: d231b230927b5e4ad203db57bbcbee2802f6bce620b1e4a9024a07d94e2907ec
  - kind: registry
    name: proc-macro-crate
    version: 3.2.0
    sha: 8ecf48c7ca261d60b74ab1a7b20da18bede46776b2e55535cb958eb595c5fa7b
  - kind: registry
    name: proc-macro2
    version: 1.0.86
    sha: 5e719e8df665df0d1c8fbfd238015744736151d4445ec0836b8e628aae103b77
  - kind: registry
    name: quote
    version: 1.0.37
    sha: b5b9d34b8991d19d98081b46eacdd8eb58c6f2b201139f7c5f643cc155a633af
  - kind: registry
    name: regex
    version: 1.10.6
    sha: 4219d74c6b67a3654a9fbebc4b419e22126d13d2f3c4a07ee0cb61ff79a79619
  - kind: registry
    name: regex-automata
    version: 0.4.7
    sha: 38caf58cc5ef2fed281f89292ef23f6365465ed9a41b7a7754eb4e26496c92df
  - kind: registry
    name: regex-syntax
    version: 0.8.4
    sha: 7a66a03ae7c801facd77a29370b4faec201768915ac14a721ba36f20bc9c209b
  - kind: registry
    name: rustc_version
    version: 0.4.1
    sha: cfcb3a22ef46e85b45de6ee7e79d063319ebb6594faafcf1c225ea92ab6e9b92
  - kind: registry
    name: semver
    version: 1.0.23
    sha: 61697e0a1c7e512e84a621326239844a24d8207b4669b41bc18b32ea5cbf988b
  - kind: registry
    name: serde
    version: 1.0.210
    sha: c8e3592472072e6e22e0a54d5904d9febf8508f65fb8552499a1abc7d1078c3a
  - kind: registry
    name: serde_derive
    version: 1.0.210
    sha: 243902eda00fad750862fc144cea25caca5e20d615af0a81bee94ca738f1df1f
  - kind: registry
    name: serde_spanned
    version: 0.6.7
    sha: eb5b1b31579f3811bf615c144393417496f152e12ac8b7663bf664f4a815306d
  - kind: registry
    name: shlex
    version: 1.3.0
    sha: 0fda2ff0d084019ba4d7c6f371c95d8fd75ce3524c3cb8fb653a3023f6323e64
  - kind: registry
    name: slab
    version: 0.4.9
    sha: 8f92a496fb766b417c996b9c5e57daf2f7ad3b0bebe1ccfca4856390e3d3bb67
  - kind: registry
    name: smallvec
    version: 1.13.2
    sha: 3c5e1a9a646d36c3599cd173a41282daf47c44583ad367b8e6837255952e5c67
  - kind: registry
    name: syn
    version: 2.0.77
    sha: 9f35bcdf61fd8e7be6caf75f429fdca8beb3ed76584befb503b1569faee373ed
  - kind: registry
    name: system-deps
    version: 7.0.2
    sha: 070a0a5e7da2d24be457809c4b3baa57a835fd2829ad8b86f9a049052fe71031
  - kind: registry
    name: target-lexicon
    version: 0.12.16
    sha: 61c41af27dd6d1e27b1b16b489db798443478cef1f06a660c96db617ba5de3b1
  - kind: registry
    name: temp-dir
    version: 0.1.13
    sha: 1f227968ec00f0e5322f9b8173c7a0cbcff6181a0a5b28e9892491c286277231
  - kind: registry
    name: toml
    version: 0.8.19
    sha: a1ed1f98e3fdc28d6d910e6737ae6ab1a93bf1985935a1193e68f93eeb68d24e
  - kind: registry
    name: toml_datetime
    version: 0.6.8
    sha: 0dd7358ecb8fc2f8d014bf86f6f638ce72ba252a2c3a2572f2a795f1d23efb41
  - kind: registry
    name: toml_edit
    version: 0.22.20
    sha: 583c44c02ad26b0c3f3066fe629275e50627026c51ac2e595cca4c230ce1ce1d
  - kind: registry
    name: unicode-ident
    version: 1.0.13
    sha: e91b56cd4cadaeb79bbf1a5645f6b4f8dc5bde8834ad5894a8db35fda9efa1fe
  - kind: registry
    name: utf8parse
    version: 0.2.2
    sha: 06abde3611657adf66d383f00b093d7faecc7fa57071cce2578660c9f1010821
  - kind: registry
    name: version-compare
    version: 0.2.0
    sha: 852e951cb7832cb45cb1169900d19760cfa39b82bc0ea9c0e5a14ae88411c98b
  - kind: registry
    name: winapi
    version: 0.3.9
    sha: 5c839a674fcd7a98952e593242ea400abe93992746761e38641405d28b00f419
  - kind: registry
    name: winapi-i686-pc-windows-gnu
    version: 0.4.0
    sha: ac3b87c63620426dd9b991e5ce0329eff545bccbbb34f3be09ff6fb6ab51b7b6
  - kind: registry
    name: winapi-x86_64-pc-windows-gnu
    version: 0.4.0
    sha: 712e227841d057c1ee1cd2fb22fa7e5a5461ae8e48fa2ca79ec42cfc1931183f
  - kind: registry
    name: windows-sys
    version: 0.52.0
    sha: 282be5f36a8ce781fad8c8ae18fa3f9beff57ec1b52cb3de0789201425d9a33d
  - kind: registry
    name: windows-targets
    version: 0.52.6
    sha: 9b724f72796e036ab90c1021d4780d4d3d648aca59e491e6b98e725b84e99973
  - kind: registry
    name: windows_aarch64_gnullvm
    version: 0.52.6
    sha: 32a4622180e7a0ec044bb555404c800bc9fd9ec262ec147edd5989ccd0c02cd3
  - kind: registry
    name: windows_aarch64_msvc
    version: 0.52.6
    sha: 09ec2a7bb152e2252b53fa7803150007879548bc709c039df7627cabbd05d469
  - kind: registry
    name: windows_i686_gnu
    version: 0.52.6
    sha: 8e9b5ad5ab802e97eb8e295ac6720e509ee4c243f69d781394014ebfe8bbfa0b
  - kind: registry
    name: windows_i686_gnullvm
    version: 0.52.6
    sha: 0eee52d38c090b3caa76c563b86c3a4bd71ef1a819287c19d586d7334ae8ed66
  - kind: registry
    name: windows_i686_msvc
    version: 0.52.6
    sha: 240948bc05c5e7c6dabba28bf89d89ffce3e303022809e73deaefe4f6ec56c66
  - kind: registry
    name: windows_x86_64_gnu
    version: 0.52.6
    sha: 147a5c80aabfbf0c7d901cb5895d1de30ef2907eb21fbbab29ca94c5b08b1a78
  - kind: registry
    name: windows_x86_64_gnullvm
    version: 0.52.6
    sha: 24d5b23dc417412679681396f2b49f3de8c1473deb516bd34410872eff51ed0d
  - kind: registry
    name: windows_x86_64_msvc
    version: 0.52.6
    sha: 589f6da84c646204747d1270a2a5661ea66ed1cced2631d546fdfb155959f9ec
  - kind: registry
    name: winnow
    version: 0.6.18
    sha: 68a9bda4691f099d435ad181000724da8e5899daa10713c2d432552b9ccd3a6f
build-depends:
- freedesktop-sdk.bst:components/desktop-file-utils.bst
- freedesktop-sdk.bst:components/rust.bst
- freedesktop-sdk.bst:public-stacks/buildsystem-meson.bst

depends:
- sdk/adwaita-icon-theme.bst
- sdk/gtk.bst
- sdk/libadwaita.bst
- freedesktop-sdk.bst:bootstrap-import.bst
