# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include $(ADK_TOPDIR)/rules.mk

PKG_NAME:=		gnupg
PKG_VERSION:=		1.4.22
PKG_RELEASE:=		1
PKG_HASH:=		324f70b5df76a4825bce50d2b1702ec3a0fac0d681540bbea1c9aa1e39814fbc
PKG_DESCR:=		gnu privacy guard
PKG_SECTION:=		app/crypto
PKG_DEPENDS:=		libreadline libncurses
PKG_BUILDDEP:=		readline ncurses
PKG_URL:=		http://www.gnupg.org/
PKG_SITES:=		ftp://ftp.gnupg.org/gcrypt/gnupg/

DISTFILES:=		$(PKG_NAME)-$(PKG_VERSION).tar.gz

PKG_SUBPKGS:=		GNUPG GPGV
 
include $(ADK_TOPDIR)/mk/package.mk

$(eval $(call PKG_template,GNUPG,gnupg,$(PKG_VERSION)-$(PKG_RELEASE),$(PKG_DEPENDS),$(PKG_DESCR),$(PKG_SECTION)))
$(eval $(call PKG_template,GPGV,gpgv,$(PKG_VERSION)-$(PKG_RELEASE),$(PKG_DEPENDS),$(PKG_DESCR),$(PKG_SECTION)))

CONFIGURE_ARGS+=	--disable-asm \
			--disable-gnupg-iconv \
			--disable-card-support \
			--disable-agent-support \
			--disable-bzip2 \
			--disable-exec \
			--disable-ldap \
			--disable-hkp \
			--disable-finger \
			--disable-dns-srv \
			--disable-rpath \
			--disable-regex

gpgv-install:
	$(INSTALL_DIR) $(IDIR_GPGV)/usr/bin
	$(INSTALL_BIN) $(WRKINST)/usr/bin/gpgv \
		$(IDIR_GPGV)/usr/bin

gnupg-install:
	$(INSTALL_DIR) $(IDIR_GNUPG)/usr/bin/
	$(INSTALL_DIR) $(IDIR_GNUPG)/usr/share/gnupg
	$(INSTALL_DATA) $(WRKINST)/usr/share/gnupg/options.skel \
		$(IDIR_GNUPG)/usr/share/gnupg
	$(INSTALL_BIN) $(WRKINST)/usr/bin/gpg $(IDIR_GNUPG)/usr/bin/
	# we need root privileges for secure memory (locked pages)
	chmod u+s $(IDIR_GNUPG)/usr/bin/gpg

include $(ADK_TOPDIR)/mk/pkg-bottom.mk
