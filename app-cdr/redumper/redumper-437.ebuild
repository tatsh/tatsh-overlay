# Copyright 2023 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

CMAKE_MAKEFILE_GENERATOR=ninja # required for C++ modules
inherit cmake flag-o-matic

DESCRIPTION="Low level CD dumper utility"
HOMEPAGE="https://github.com/superg/redumper"
SRC_URI="https://github.com/superg/redumper/archive/refs/tags/build_${PV}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64"
# Clang is forced due to ICE with GCC with -j1, failure otherwise
IUSE="+clang"
MIN_CLANG_VERSION="18.1.8"

BDEPEND=">=sys-devel/clang-${MIN_CLANG_VERSION}
	dev-build/ninja"
DEPEND=">=sys-libs/libcxx-${MIN_CLANG_VERSION}[static-libs]
	>=sys-libs/libcxxabi-${MIN_CLANG_VERSION}[static-libs]"

S="${WORKDIR}/${PN}-build_${PV}"

src_configure() {
	if use clang; then
		CC=clang
		CXX=clang++
		export CC CXX
	fi
	cmake_src_configure
}

src_install() {
	cmake_src_install
	rm -f "${D}/usr/bin/"*.pcm
}