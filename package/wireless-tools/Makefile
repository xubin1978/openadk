# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		wireless-tools
PKG_VERSION:=		29
PKG_RELEASE:=		1
PKG_HASH:=		6fb80935fe208538131ce2c4178221bab1078a1656306bce8909c19887e2e5a1
PKG_DESCR:=		wireless tools (for older wireless drivers)
PKG_SECTION:=		net/wifi
PKG_SITES:=		http://www.hpl.hp.com/personal/Jean_Tourrilhes/Linux/

DISTFILES:=		wireless_tools.${PKG_VERSION}.tar.gz
WRKDIST=		${WRKDIR}/wireless_tools.29

include ${ADK_TOPDIR}/mk/package.mk

$(eval $(call PKG_template,WIRELESS_TOOLS,wireless-tools,$(PKG_VERSION)-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

CONFIG_STYLE:=		manual
MAKE_FLAGS+=		CC="${TARGET_CC}" CFLAGS="${TARGET_CFLAGS} -I."
ALL_TARGET:=		libiw.so.29 iwmulticall
FAKE_FLAGS:=		INSTALL_DIR="${WRKINST}/usr/sbin" \
			INSTALL_LIB="${WRKINST}/usr/lib" \
			INSTALL_INC="${WRKINST}/usr/include"
INSTALL_TARGET:=	install-iwmulticall install-hdr install-dynamic

wireless-tools-install:
	${INSTALL_DIR} ${IDIR_WIRELESS_TOOLS}/usr/sbin
	${INSTALL_DIR} ${IDIR_WIRELESS_TOOLS}/usr/lib
	${INSTALL_DATA} ${WRKINST}/usr/lib/libiw.so.* \
		${IDIR_WIRELESS_TOOLS}/usr/lib/
	${CP} ${WRKINST}/usr/sbin/iw* ${IDIR_WIRELESS_TOOLS}/usr/sbin/

include ${ADK_TOPDIR}/mk/pkg-bottom.mk

