# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include $(ADK_TOPDIR)/rules.mk

PKG_NAME:=		mailutils
PKG_VERSION:=		2.2
PKG_RELEASE:=		1
PKG_HASH:=		7b1508935050684a4df4f4d343a3b3acc25abdf6d072460d43f22e88e10b6269
PKG_DESCR:=		mail program
PKG_SECTION:=		net/mail
PKG_BUILDDEP:=		readline
PKG_DEPENDS:=		libreadline
PKG_URL:=		http://mailutils.org/
PKG_SITES:=		ftp://ftp.gnu.org/gnu/mailutils/

PKG_HOST_DEPENDS:=	x86 x86_64

include $(ADK_TOPDIR)/mk/package.mk

$(eval $(call PKG_template,MAILUTILS,mailutils,$(PKG_VERSION)-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

mailutils-install:
	$(INSTALL_DIR) $(IDIR_MAILUTILS)/usr/bin
	$(INSTALL_BIN) $(WRKINST)/usr/bin/mail \
		$(IDIR_MAILUTILS)/usr/bin
	$(INSTALL_DIR) $(IDIR_MAILUTILS)/usr/lib
	$(CP) $(WRKINST)/usr/lib/libmailutils*so* \
		$(IDIR_MAILUTILS)/usr/lib
	$(CP) $(WRKINST)/usr/lib/libmu*so* \
		$(IDIR_MAILUTILS)/usr/lib

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
