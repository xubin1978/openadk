# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include $(ADK_TOPDIR)/rules.mk

PKG_NAME:=		xinput_calibrator
PKG_VERSION:=		0.7.5
PKG_RELEASE:=		2
PKG_HASH:=		baa4ddca49ec94c27ba4c715bfa26692fec1132103e927213c3169e475d3d971
PKG_DESCR:=		input calibration utility
PKG_SECTION:=		x11/utils
PKG_NEEDS:=		c++
PKG_URL:=		http://www.freedesktop.org/wiki/Software/xinput_calibrator/
PKG_SITES:=		http://github.com/downloads/tias/xinput_calibrator/

DISTFILES:=		${PKG_NAME}-${PKG_VERSION}.tar.gz

include $(ADK_TOPDIR)/mk/package.mk

$(eval $(call PKG_template,XINPUT_CALIBRATOR,xinput-calibrator,$(PKG_VERSION)-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

xinput-calibrator-install:
	$(INSTALL_DIR) $(IDIR_XINPUT_CALIBRATOR)/usr/bin
	$(INSTALL_BIN) $(WRKINST)/usr/bin/xinput_calibrator \
		$(IDIR_XINPUT_CALIBRATOR)/usr/bin

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
