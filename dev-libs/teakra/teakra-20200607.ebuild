# Copyright 2020 Gentoo Authors
# Distributed under the terms of the GNU General Public License v2

EAPI=7
inherit cmake-utils

DESCRIPTION="Emulator, (dis-)assembler, tools and documentation for XpertTeak, the DSP used by DSi/3DS."
HOMEPAGE="https://github.com/wwylele/teakra"
MY_SHA="3e032a73d7e97eb434a053391d95029eebd7e189"
SRC_URI="https://github.com/wwylele/${PN}/archive/${MY_SHA}.tar.gz -> ${P}.tar.gz"

LICENSE=""
SLOT="0"
KEYWORDS="~amd64 ~x86"
IUSE=""

DEPEND=""
RDEPEND="${DEPEND}"
BDEPEND=""

S="${WORKDIR}/${PN}-${MY_SHA}"

src_configure() {
	local mycmakeargs=(
		-DTEAKRA_BUILD_TOOLS=OFF
		-DTEAKRA_BUILD_UNIT_TESTS=OFF
	)
	cmake-utils_src_configure
}

src_install() {
	einstalldocs
	dolib.so "${BUILD_DIR}/src/lib${PN}.so" "${BUILD_DIR}/src/lib${PN}_c.so"
	insinto /usr/include
	doins -r include/${PN}
}
