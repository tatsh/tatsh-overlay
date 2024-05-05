# Copyright 2021-2022 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=8

DESCRIPTION="Floating IPS is a patcher for IPS and BPS files."
HOMEPAGE="https://github.com/Alcaro/Flips"
SHA="20b0da9ab95d23da89f821bbddedb11b8e0e6531"
SRC_URI="https://github.com/Alcaro/Flips/archive/${SHA}.tar.gz -> ${P}.tar.gz"

LICENSE="GPL-3"
SLOT="0"
KEYWORDS="~amd64 ~arm ~arm64 ~ppc64 ~x86"
IUSE="gtk"

DEPEND="gtk? ( x11-libs/gtk+:3 )"
RDEPEND="${DEPEND}"

S="${WORKDIR}/Flips-${SHA}"

src_configure() {
	:
}

src_compile() {
	local target=cli
	emake "TARGET=${target}"
	mv "${PN}" "${PN}-cli"
	if use gtk; then
		emake TARGET=gtk
	fi
}

src_install() {
	if ! use gtk; then
		newbin "${PN}-cli" "${PN}"
	else
		dobin "${PN}-cli"
		default
	fi
}