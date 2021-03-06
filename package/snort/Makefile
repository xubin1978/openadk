# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		snort
PKG_VERSION:=		2.9.5
PKG_RELEASE:=		1
PKG_HASH:=		1f9997716e8c086c9d608294a55c323846877c8f16acd129a90ca5fadbba1890
PKG_DESCR:=		flexible network intrusion detection system
PKG_SECTION:=		net/security
PKG_DEPENDS:=		libnet libpcap libpcre libtirpc daq
PKG_BUILDDEP:=		libnet libpcap pcre libtirpc daq
PKG_URL:=		http://www.snort.org/
PKG_SITES:=		http://distfiles.openadk.org/
PKG_NOPARALLEL:=	1

DISTFILES:=		${PKG_NAME}-${PKG_VERSION}.tar.gz

PKG_LIBC_DEPENDS:=	uclibc-ng glibc

include ${ADK_TOPDIR}/mk/package.mk

$(eval $(call PKG_template,SNORT,snort,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

TARGET_CPPFLAGS+=	-I$(STAGING_TARGET_DIR)/usr/include/tirpc
TARGET_LDFLAGS+=	-ltirpc
CONFIGURE_ARGS+=	--disable-static-daq \
			--with-libpcap-includes="${STAGING_TARGET_DIR}/usr/include" \
			--with-libpcap-libraries="${STAGING_TARGET_DIR}/usr/lib" \
			--with-libpcre-includes="${STAGING_TARGET_DIR}/usr/include" \
			--with-libpcre-libraries="${STAGING_TARGET_DIR}/usr/lib" \
			--with-dnet-includes="${STAGING_TARGET_DIR}/usr/include" \ 
			--with-dnet-libraries="${STAGING_TARGET_DIR}/usr/lib" 

snort-install:
	${INSTALL_DIR} ${IDIR_SNORT}/usr/bin
	${INSTALL_DIR} ${IDIR_SNORT}/etc/snort
	${INSTALL_DATA} ${WRKBUILD}/etc/snort.conf ${IDIR_SNORT}/etc/snort
	${INSTALL_DATA} ${WRKBUILD}/etc/classification.config \
		${IDIR_SNORT}/etc/snort
	${INSTALL_DATA} ${WRKBUILD}/etc/gen-msg.map \
		${IDIR_SNORT}/etc/snort
	${INSTALL_DATA} ${WRKBUILD}/etc/reference.config \
		${IDIR_SNORT}/etc/snort
	${INSTALL_DATA} ${WRKBUILD}/etc/threshold.conf \
		${IDIR_SNORT}/etc/snort
	${INSTALL_DATA} ${WRKBUILD}/etc/unicode.map \
		${IDIR_SNORT}/etc/snort
	${INSTALL_BIN} ${WRKINST}/usr/bin/snort ${IDIR_SNORT}/usr/bin

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
