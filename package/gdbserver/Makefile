# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		gdbserver
PKG_VERSION:=		8.1
PKG_RELEASE:=		1
PKG_HASH:=		af61a0263858e69c5dce51eab26662ff3d2ad9aa68da9583e8143b5426be4b34
PKG_DESCR:=		remote programm debugger utility
PKG_SECTION:=		app/debug
PKG_NEEDS:=		c++
PKG_SITES:=		${MASTER_SITE_GNU:=gdb/}
PKG_DEPENDS:=		libthread-db

PKG_LIBC_DEPENDS:=	!musl
PKG_ARCH_DEPENDS:=	!microblaze

ifeq ($(ADK_TOOLCHAIN_GDB_6_7_1),y)
DISTFILES:=		gdb-6.7.1-avr32-2.1.5.tar.bz2
WRKDIST=		$(WRKDIR)/gdb-6.7.1-avr32-2.1.5
else
DISTFILES:=		gdb-${PKG_VERSION}.tar.xz
WRKDIST=		${WRKDIR}/gdb-${PKG_VERSION}
endif
WRKSRC=                 ${WRKDIST}/gdb/gdbserver

include ${ADK_TOPDIR}/mk/package.mk

$(eval $(call PKG_template,GDBSERVER,gdbserver,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

ifneq ($(ADK_TARGET_BINFMT_FLAT)$(ADK_TARGET_USE_STATIC_LIBS_ONLY)$(ADK_TARGET_USE_STATIC_AND_SHARED_LIBS),)
TARGET_LDFLAGS+=	-static-libstdc++
CONFIGURE_ARGS+=	--disable-build-with-cxx --with-libthread-db=$(STAGING_TARGET_DIR)/usr/lib/libthread_db.a
endif

gdbserver-install:
	${INSTALL_DIR} ${IDIR_GDBSERVER}/usr/bin
	${INSTALL_BIN} ${WRKINST}/usr/bin/gdbserver ${IDIR_GDBSERVER}/usr/bin/

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
