# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include $(ADK_TOPDIR)/rules.mk

PKG_NAME:=		libfastjson
PKG_VERSION:=		0.99.4
PKG_RELEASE:=		1
PKG_HASH:=		03ef63dcc88417e71c19ce4436804159e3397e3a20d3529efef6a43c3bef5c8d
PKG_DESCR:=		another json library
PKG_SECTION:=		libs/data
PKG_URL:=		https://github.com/rsyslog/libfastjson
PKG_SITES:=		https://github.com/rsyslog/libfastjson/archive/
PKG_OPTS:=		dev

DISTFILES:=             v$(PKG_VERSION).tar.gz

include $(ADK_TOPDIR)/mk/package.mk

$(eval $(call PKG_template,LIBFASTJSON,libfastjson,$(PKG_VERSION)-$(PKG_RELEASE),$(PKG_DEPENDS),$(PKG_DESCR),$(PKG_SECTION),$(PKG_OPTS)))

AUTOTOOL_STYLE:=	autogen

libfastjson-install:
	$(INSTALL_DIR) $(IDIR_LIBFASTJSON)/usr/lib
	$(CP) $(WRKINST)/usr/lib/libfastjson*.so* \
		$(IDIR_LIBFASTJSON)/usr/lib

include $(ADK_TOPDIR)/mk/pkg-bottom.mk
