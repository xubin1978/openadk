# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		procmail
PKG_VERSION:=		3.22
PKG_RELEASE:=		1
PKG_HASH:=		087c75b34dd33d8b9df5afe9e42801c9395f4bf373a784d9bc97153b0062e117
PKG_DESCR:=		mail processing tools
PKG_SECTION:=		net/mail
PKG_URL:=		http://www.procmail.org/
PKG_SITES:=		ftp://ftp.informatik.rwth-aachen.de/pub/packages/procmail/

DISTFILES:=		${PKG_NAME}-${PKG_VERSION}.tar.gz

include ${ADK_TOPDIR}/mk/package.mk

$(eval $(call PKG_template,PROCMAIL,procmail,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

CONFIG_STYLE:=          manual
BUILD_STYLE:=           manual
INSTALL_STYLE:=         manual

TARGET_CPPFLAGS+=	-DPROCMAIL

do-build:
	${MAKE} -C ${WRKBUILD}/src -f ../Makefile.new

do-install:
	${INSTALL_DIR} ${IDIR_PROCMAIL}/usr/bin
	${INSTALL_BIN} ${WRKBUILD}/src/procmail ${IDIR_PROCMAIL}/usr/bin/
	${INSTALL_BIN} ${WRKBUILD}/src/formail ${IDIR_PROCMAIL}/usr/bin/

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
