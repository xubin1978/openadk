# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		jupp
PKG_VERSION:=		31
PKG_RELEASE:=		1
PKG_HASH:=		1a50607b0417cf230f7b3609c091e71e8d8e91185a4a3897f7925cd3b44cceba
PKG_DESCR:=		wordstar-inspired text editor
PKG_SECTION:=		app/editor
PKG_URL:=		https://www.mirbsd.org/jupp.htm
PKG_SITES:=		${MASTER_SITE_MIRBSD:distfiles/=dist/jupp/}
DISTFILES:=		joe-3.1jupp${PKG_VERSION}.tgz

WRKDIST=		${WRKDIR}/jupp

PKG_FLAVOURS_JUPP:=	CURSES EXTRAS JOE
PKGFD_CURSES:=		use ncurses for terminal control
PKGFS_CURSES:=		libncurses
PKGFB_CURSES:=		ncurses
PKGFD_EXTRAS:=		add syntax highlighting, charmaps
PKGFD_JOE:=		add jmacs, joe, jpico, jstar, rjoe

include ${ADK_TOPDIR}/mk/package.mk
$(eval $(call PKG_template,JUPP,jupp,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

XAKE_FLAGS+=		sysconfjoesubdir=/jupp

ifeq (${ADK_PACKAGE_JUPP_CURSES},y)
# disable SELinux still
CONFIGURE_ENV+=		ac_cv_search_is_selinux_enabled=no
else
# disable curses/termcap support, SELinux support
CONFIGURE_ARGS+=	--disable-curses --disable-termcap --disable-search-libs
endif

# necessary workaround for GNU libc
ifeq (${ADK_TARGET_LIB_GLIBC},y)
CONFIGURE_ARGS+=	--disable-getpwnam
endif

# unneeded
CONFIGURE_ARGS+=	--disable-termidx

jupp-install:
	${INSTALL_DIR} ${IDIR_JUPP}/usr/bin
	${CP} ${WRKINST}/usr/bin/joe ${IDIR_JUPP}/usr/bin/jupp
ifneq (${ADK_PACKAGE_JUPP_EXTRAS}${ADK_PACKAGE_JUPP_JOE},)
	${INSTALL_DIR} ${IDIR_JUPP}/etc/jupp
endif
ifeq (${ADK_PACKAGE_JUPP_EXTRAS},y)
	${CP} ${WRKINST}/etc/jupp/jupprc ${IDIR_JUPP}/etc/jupp/
	${INSTALL_DIR} ${IDIR_JUPP}/etc/jupp/charmaps
	${INSTALL_DIR} ${IDIR_JUPP}/etc/jupp/syntax
	${CP} ${WRKINST}/etc/jupp/charmaps/* ${IDIR_JUPP}/etc/jupp/charmaps/
	${CP} ${WRKINST}/etc/jupp/syntax/* ${IDIR_JUPP}/etc/jupp/syntax/
endif
ifeq (${ADK_PACKAGE_JUPP_JOE},y)
	for x in jmacs joe jpico jstar rjoe; do \
		ln -s jupp ${IDIR_JUPP}/usr/bin/$$x; \
		${CP} ${WRKINST}/etc/jupp/$${x}rc ${IDIR_JUPP}/etc/jupp/; \
	done
endif

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
