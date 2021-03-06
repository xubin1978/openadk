# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		miredo
PKG_VERSION:=		1.2.6
PKG_RELEASE:=		2
PKG_HASH:=		fa26d2f4a405415833669e2e2e22677b225d8f83600844645d5683535ea43149
PKG_DESCR:=		teredo application
PKG_SECTION:=		net/ipv6
PKG_URL:=		http://www.remlab.net/
PKG_SITES:=		http://www.remlab.net/files/miredo/

PKG_SUBPKGS:=		MIREDO_CLIENT MIREDO_SERVER
PKGSD_MIREDO_CLIENT:=	teredo client
PKGSD_MIREDO_SERVER:=	teredo relay daemon

include ${ADK_TOPDIR}/mk/package.mk

$(eval $(call PKG_template,MIREDO_CLIENT,miredo-client,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKGSD_MIREDO_CLIENT},${PKG_SECTION}))
$(eval $(call PKG_template,MIREDO_SERVER,miredo-server,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKGSD_MIREDO_SERVER},${PKG_SECTION}))

AUTOTOOL_STYLE:=	autoreconf
TARGET_CFLAGS+=		-std=gnu99
CONFIGURE_ENV+=		ac_cv_file__proc_self_maps=yes
CONFIGURE_ARGS+=	--without-Judy \
			--without-libcap \
			--enable-teredo-client \
			--enable-miredo-user=root

XAKE_FLAGS+=		 CXXLINK="\$${LINK}"

miredo-client-install:
	${INSTALL_DIR} ${IDIR_MIREDO_CLIENT}/etc/miredo ${IDIR_MIREDO_CLIENT}/usr/sbin
	${INSTALL_DIR} ${IDIR_MIREDO_CLIENT}/usr/lib
	${INSTALL_DATA} ${WRKINST}/etc/miredo/miredo.conf \
		${IDIR_MIREDO_CLIENT}/etc/miredo
	${CP} ${WRKINST}/usr/lib/libtun*.so* ${IDIR_MIREDO_CLIENT}/usr/lib
	${CP} ${WRKINST}/usr/lib/libteredo.so* ${IDIR_MIREDO_CLIENT}/usr/lib
	${INSTALL_BIN} ${WRKINST}/usr/sbin/miredo ${IDIR_MIREDO_CLIENT}/usr/sbin/

miredo-server-install:
	${INSTALL_DIR} ${IDIR_MIREDO_SERVER}/usr/sbin
	${INSTALL_BIN} ${WRKINST}/usr/sbin/miredo-server \
		${IDIR_MIREDO_SERVER}/usr/sbin/

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
