# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		dosfstools
PKG_VERSION:=		4.1
PKG_RELEASE:=		1
PKG_HASH:=		e6b2aca70ccc3fe3687365009dd94a2e18e82b688ed4e260e04b7412471cc173
PKG_DESCR:=		utilities to create and check fat filesystems
PKG_SECTION:=		sys/fs
PKG_NEEDS:=		iconv
PKG_URL:=		http://www.daniel-baumann.ch/software/dosfstools/
PKG_SITES:=		https://github.com/dosfstools/dosfstools/releases/download/v$(PKG_VERSION)/

PKG_CFLINE_DOSFSTOOLS:=	select BUSYBOX_FSCK

include ${ADK_TOPDIR}/mk/host.mk
include ${ADK_TOPDIR}/mk/package.mk

$(eval $(call HOST_template,DOSFSTOOLS,dosfstools,${PKG_VERSION}-${PKG_RELEASE}))
$(eval $(call PKG_template,DOSFSTOOLS,dosfstools,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

HOST_CONFIGURE_ARGS+=	--enable-compat-symlinks

dosfstools-install:
	${INSTALL_DIR} ${IDIR_DOSFSTOOLS}/usr/sbin
	${INSTALL_BIN} ${WRKINST}/usr/sbin/fsck.fat ${IDIR_DOSFSTOOLS}/usr/sbin
	${INSTALL_BIN} ${WRKINST}/usr/sbin/mkfs.fat ${IDIR_DOSFSTOOLS}/usr/sbin

include ${ADK_TOPDIR}/mk/host-bottom.mk
include ${ADK_TOPDIR}/mk/pkg-bottom.mk
