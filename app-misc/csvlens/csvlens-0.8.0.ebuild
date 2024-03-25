# Copyright 2024 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

# Autogenerated by pycargoebuild 0.13.2

EAPI=8

CRATES="
	adler@1.0.2
	ahash@0.8.6
	aho-corasick@1.0.1
	allocator-api2@0.2.16
	android-tzdata@0.1.1
	android_system_properties@0.1.5
	anstream@0.3.1
	anstyle-parse@0.2.0
	anstyle-query@1.0.0
	anstyle-wincon@1.0.1
	anstyle@1.0.0
	anyhow@1.0.56
	arboard@3.3.2
	arrow-arith@50.0.0
	arrow-array@50.0.0
	arrow-buffer@50.0.0
	arrow-cast@50.0.0
	arrow-csv@50.0.0
	arrow-data@50.0.0
	arrow-ord@50.0.0
	arrow-row@50.0.0
	arrow-schema@50.0.0
	arrow-select@50.0.0
	arrow-string@50.0.0
	arrow@50.0.0
	autocfg@1.1.0
	base64@0.21.7
	bitflags@1.3.2
	bitflags@2.4.1
	block@0.1.6
	bumpalo@3.14.0
	bytemuck@1.15.0
	byteorder@1.5.0
	bytes@1.5.0
	cassowary@0.3.0
	cc@1.0.79
	cfg-if@1.0.0
	chrono@0.4.31
	clap@4.2.5
	clap_builder@4.2.5
	clap_derive@4.2.0
	clap_lex@0.4.1
	clipboard-win@5.3.0
	color_quant@1.1.0
	colorchoice@1.0.0
	const-random-macro@0.1.16
	const-random@0.1.17
	core-foundation-sys@0.8.6
	core-foundation@0.9.4
	core-graphics-types@0.1.3
	core-graphics@0.23.1
	crc32fast@1.4.0
	crossterm@0.27.0
	crossterm_winapi@0.9.1
	crunchy@0.2.2
	csv-core@0.1.10
	csv-sniffer@0.3.1
	csv@1.2.1
	either@1.9.0
	errno-dragonfly@0.1.2
	errno@0.3.1
	error-code@3.2.0
	fastrand@1.7.0
	fdeflate@0.3.4
	filedescriptor@0.8.2
	flate2@1.0.28
	foreign-types-macros@0.2.3
	foreign-types-shared@0.3.1
	foreign-types@0.5.0
	gethostname@0.4.3
	getrandom@0.2.12
	half@2.3.1
	hashbrown@0.14.3
	heck@0.4.1
	hermit-abi@0.3.1
	iana-time-zone-haiku@0.1.2
	iana-time-zone@0.1.59
	image@0.24.9
	indoc@2.0.4
	instant@0.1.12
	io-lifetimes@1.0.5
	is-terminal@0.4.7
	itertools@0.12.0
	itoa@1.0.6
	jpeg-decoder@0.3.1
	js-sys@0.3.67
	lazy_static@1.4.0
	lexical-core@0.8.5
	lexical-parse-float@0.8.5
	lexical-parse-integer@0.8.6
	lexical-util@0.8.5
	lexical-write-float@0.8.5
	lexical-write-integer@0.8.5
	libc@0.2.152
	libm@0.2.8
	linux-raw-sys@0.3.6
	linux-raw-sys@0.4.13
	lock_api@0.4.7
	log@0.4.17
	lru@0.12.1
	malloc_buf@0.0.6
	memchr@2.7.1
	miniz_oxide@0.7.2
	mio@0.8.4
	num-bigint@0.4.4
	num-complex@0.4.4
	num-integer@0.1.45
	num-iter@0.1.43
	num-rational@0.4.1
	num-traits@0.2.17
	num@0.4.1
	objc-foundation@0.1.1
	objc@0.2.7
	objc_id@0.1.1
	once_cell@1.19.0
	parking_lot@0.12.1
	parking_lot_core@0.9.3
	paste@1.0.14
	png@0.17.13
	proc-macro2@1.0.71
	quote@1.0.33
	ratatui@0.25.0
	redox_syscall@0.2.11
	redox_syscall@0.3.5
	regex-automata@0.4.3
	regex-syntax@0.8.2
	regex@1.10.2
	rustix@0.37.3
	rustix@0.38.25
	rustversion@1.0.14
	ryu@1.0.16
	scopeguard@1.1.0
	serde@1.0.193
	serde_derive@1.0.193
	signal-hook-mio@0.2.3
	signal-hook-registry@1.4.0
	signal-hook@0.3.17
	simd-adler32@0.3.7
	smallvec@1.9.0
	sorted-vec@0.8.3
	stability@0.1.1
	static_assertions@1.1.0
	strsim@0.10.0
	strum@0.25.0
	strum_macros@0.25.3
	syn@1.0.89
	syn@2.0.43
	tempfile@3.5.0
	thiserror-impl@1.0.38
	thiserror@1.0.38
	tiff@0.9.1
	tiny-keccak@2.0.2
	tui-input@0.8.0
	unicode-ident@1.0.6
	unicode-segmentation@1.10.1
	unicode-width@0.1.11
	unicode-xid@0.2.2
	utf8parse@0.2.1
	version_check@0.9.4
	wasi@0.11.0+wasi-snapshot-preview1
	wasm-bindgen-backend@0.2.90
	wasm-bindgen-macro-support@0.2.90
	wasm-bindgen-macro@0.2.90
	wasm-bindgen-shared@0.2.90
	wasm-bindgen@0.2.90
	weezl@0.1.8
	winapi-i686-pc-windows-gnu@0.4.0
	winapi-x86_64-pc-windows-gnu@0.4.0
	winapi@0.3.9
	windows-core@0.52.0
	windows-sys@0.36.1
	windows-sys@0.45.0
	windows-sys@0.48.0
	windows-targets@0.42.1
	windows-targets@0.48.0
	windows-targets@0.52.0
	windows_aarch64_gnullvm@0.42.1
	windows_aarch64_gnullvm@0.48.0
	windows_aarch64_gnullvm@0.52.0
	windows_aarch64_msvc@0.36.1
	windows_aarch64_msvc@0.42.1
	windows_aarch64_msvc@0.48.0
	windows_aarch64_msvc@0.52.0
	windows_i686_gnu@0.36.1
	windows_i686_gnu@0.42.1
	windows_i686_gnu@0.48.0
	windows_i686_gnu@0.52.0
	windows_i686_msvc@0.36.1
	windows_i686_msvc@0.42.1
	windows_i686_msvc@0.48.0
	windows_i686_msvc@0.52.0
	windows_x86_64_gnu@0.36.1
	windows_x86_64_gnu@0.42.1
	windows_x86_64_gnu@0.48.0
	windows_x86_64_gnu@0.52.0
	windows_x86_64_gnullvm@0.42.1
	windows_x86_64_gnullvm@0.48.0
	windows_x86_64_gnullvm@0.52.0
	windows_x86_64_msvc@0.36.1
	windows_x86_64_msvc@0.42.1
	windows_x86_64_msvc@0.48.0
	windows_x86_64_msvc@0.52.0
	x11rb-protocol@0.13.0
	x11rb@0.13.0
	zerocopy-derive@0.7.32
	zerocopy@0.7.32
"

inherit cargo

DESCRIPTION="Command line csv viewer"
HOMEPAGE="https://github.com/YS-L/csvlens"
SRC_URI="
	https://github.com/YS-L/${PN}/archive/refs/tags/v${PV}.tar.gz -> ${P}.tar.gz
	${CARGO_CRATE_URIS}
"

LICENSE="MIT"
# Dependent crate licenses
LICENSE+=" Apache-2.0 BSD CC0-1.0 MIT Unicode-DFS-2016"
SLOT="0"
KEYWORDS="~amd64"
