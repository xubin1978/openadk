# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include $(ADK_TOPDIR)/rules.mk

PKG_NAME:=		libwebp
PKG_VERSION:=		0.3.1
PKG_RELEASE:=		1
PKG_HASH:=		b37932c625322a69fe4e9b88884b5c7aed2b3eaf9fd5e5b480aee339a92e6ee7
PKG_DESCR:=		new image format for the web
PKG_SECTION:=		libs/image
PKG_URL:=		https://developers.google.com/speed/webp/
PKG_SITES:=		https://webp.googlecode.com/files/
PKG_OPTS:=		dev

DISTFILES:=		${PKG_NAME}-${PKG_VERSION}.tar.gz

include $(ADK_TOPDIR)/mk/package.mk

$(eval $(call PKG_template,LIBWEBP,libwebp,$(PKG_VERSION)-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION},${PKG_OPTS}))

libwebp-install:
	$(INSTALL_DIR) $(IDIR_LIBWEBP)/usr/lib
	$(CP) $(WRKINST)/usr/lib/libwebp*.so* \
		$(IDIR_LIBWEBP)/usr/lib

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
