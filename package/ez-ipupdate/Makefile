# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		ez-ipupdate
PKG_VERSION:=		3.0.11b8
PKG_RELEASE:=		11
PKG_HASH:=		bf5b8d11ffe055c5891d0ab64bbfa86e99cbda645d40f346146b939fec8d962d
PKG_DESCR:=		client for dynamic dns services
PKG_SECTION:=		net/dns
PKG_URL:=		http://ez-ipupdate.com/
PKG_SITES:=		http://ftp.debian.org/debian/pool/main/e/ez-ipupdate/

DISTFILES:=		${PKG_NAME}_${PKG_VERSION}.orig.tar.gz

include ${ADK_TOPDIR}/mk/package.mk

$(eval $(call PKG_template,EZ_IPUPDATE,ez-ipupdate,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

INSTALL_STYLE:=		manual

do-install:
	${INSTALL_DIR} ${IDIR_EZ_IPUPDATE}/etc ${IDIR_EZ_IPUPDATE}/usr/sbin
	install -m0600 ./files/ez-ipupdate.conf ${IDIR_EZ_IPUPDATE}/etc/
	${INSTALL_BIN} ${WRKBUILD}/ez-ipupdate ${IDIR_EZ_IPUPDATE}/usr/sbin/

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
