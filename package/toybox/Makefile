# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include $(ADK_TOPDIR)/rules.mk

PKG_NAME:=		toybox
PKG_VERSION:=		0.7.1
PKG_RELEASE:=		1
PKG_HASH:=		5bb3069f58faf12940d5cfde3209ac7f63210bebdd9023979b0c20cede126ea7
PKG_DESCR:=		linux tools collection
PKG_SECTION:=		base/apps
PKG_URL:=		http://landley.net/toybox/
PKG_SITES:=		http://landley.net/toybox/downloads/
PKG_BB:=		1

DISTFILES:=             $(PKG_NAME)-$(PKG_VERSION).tar.gz

include $(ADK_TOPDIR)/mk/package.mk

$(eval $(call PKG_template,TOYBOX,toybox,$(PKG_VERSION)-$(PKG_RELEASE),$(PKG_DEPENDS),$(PKG_DESCR),$(PKG_SECTION)))

CONFIG_STYLE:=		manual
XAKE_FLAGS+=		CC="gcc" V=1 PREFIX="$(WRKINST)"

do-configure:
	-rm $(WRKBUILD)/toys/other/swap*.c
	cd $(WRKBUILD); PATH='$(HOST_PATH)' $(MAKE) defconfig

toybox-install:
	$(CP) $(WRKINST)/* $(IDIR_TOYBOX)/

include $(ADK_TOPDIR)/mk/pkg-bottom.mk
