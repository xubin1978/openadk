# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		macchanger
PKG_VERSION:=		1.6.0
PKG_RELEASE:=		1
PKG_HASH:=		31534f138f1d21fa247be74ba6bef3fbfa47bbcd5033e99bd10c432fe58e51f7
PKG_DESCR:=		utility for viewing/manipulating the mac address
PKG_SECTION:=		sys/utils
PKG_URL:=		http://www.alobbs.com/macchanger
PKG_SITES:=		${MASTER_SITE_GNU:=macchanger/}

DISTFILES:=		${PKG_NAME}-${PKG_VERSION}.tar.gz

include ${ADK_TOPDIR}/mk/package.mk

$(eval $(call PKG_template,MACCHANGER,macchanger,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

macchanger-install:
	${INSTALL_DIR} ${IDIR_MACCHANGER}/usr/bin ${IDIR_MACCHANGER}/usr/share
	${INSTALL_BIN} ${WRKINST}/usr/bin/macchanger ${IDIR_MACCHANGER}/usr/bin
	${CP} ${WRKINST}/usr/share/macchanger ${IDIR_MACCHANGER}/usr/share

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
