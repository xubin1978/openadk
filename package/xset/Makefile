# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include $(ADK_TOPDIR)/rules.mk

PKG_NAME:=		xset
PKG_VERSION:=		1.2.3
PKG_RELEASE:=		1
PKG_HASH:=		5ecb2bb2cbf3c9349b735080b155a08c97b314dacedfc558c7f5a611ee1297f7
PKG_DESCR:=		set utility
PKG_SECTION:=		x11/utils
PKG_BUILDDEP:=		libXmu
PKG_URL:=		http://xorg.freedesktop.org/
PKG_SITES:=		http://www.x.org/releases/individual/app/

DISTFILES:=		${PKG_NAME}-${PKG_VERSION}.tar.gz

include $(ADK_TOPDIR)/mk/package.mk

$(eval $(call PKG_template,XSET,xset,$(PKG_VERSION)-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

xset-install:
	$(INSTALL_DIR) $(IDIR_XSET)/usr/bin
	$(INSTALL_BIN) $(WRKINST)/usr/bin/xset \
		$(IDIR_XSET)/usr/bin

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
