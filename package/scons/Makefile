# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include $(ADK_TOPDIR)/rules.mk

PKG_NAME:=		scons
PKG_VERSION:=		2.3.0
PKG_RELEASE:=		2
PKG_HASH:=		9442069999cf4b2caa94a5886ab4c2c71de1718ed5e9176c18e2b6dbca463b4b
PKG_DESCR:=		software construction tool
PKG_SECTION:=		dev/tools
HOST_BUILDDEP:=		python2-host
PKG_URL:=		http://www.scons.org
PKG_SITES:=		${MASTER_SITE_SOURCEFORGE:=scons/}

DISTFILES:=		${PKG_NAME}-${PKG_VERSION}.tar.gz

PKG_CFLINE_SCONS:=	depends on ADK_HOST_ONLY

include $(ADK_TOPDIR)/mk/host.mk
include $(ADK_TOPDIR)/mk/package.mk

$(eval $(call HOST_template,SCONS,scons,$(PKG_VERSION)-${PKG_RELEASE}))

HOST_STYLE:=		manual

scons-hostinstall:
	(cd $(WRKBUILD); PATH='$(HOST_PATH)' python setup.py install \
		--prefix=$(STAGING_HOST_DIR)/usr)

include ${ADK_TOPDIR}/mk/host-bottom.mk
include ${ADK_TOPDIR}/mk/pkg-bottom.mk
