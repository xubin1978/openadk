# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include $(ADK_TOPDIR)/rules.mk

PKG_NAME:=		Pyrex
PKG_VERSION:=		0.9.9
PKG_RELEASE:=		3
PKG_HASH:=		5f87df06831d0b3412eb4bc9d3fc2ee7bfae1b913d7da8c23ab2bf5699fb6b50
PKG_DESCR:=		mixes python and c data types
PKG_SECTION:=		dev/python
PKG_DEPENDS:=		python2
PKG_URL:=		http://www.cosc.canterbury.ac.nz/greg.ewing/python/Pyrex/
PKG_SITES:=		http://www.cosc.canterbury.ac.nz/greg.ewing/python/Pyrex/

DISTFILES:=		${PKG_NAME}-${PKG_VERSION}.tar.gz

include $(ADK_TOPDIR)/mk/package.mk

$(eval $(call PKG_template,PYREX,pyrex,$(PKG_VERSION)-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

CONFIG_STYLE:=		manual
BUILD_STYLE:=		manual
INSTALL_STYLE:=		manual

include $(ADK_TOPDIR)/mk/python.mk

do-build:
	cd $(WRKBUILD); env PYTHONPATH=$(PYTHON_LIBDIR) $(PYTHON) ./setup.py build
	cd $(WRKBUILD); env PYTHONPATH=$(PYTHON_LIBDIR) $(PYTHON) ./setup.py install --prefix="$(STAGING_HOST_DIR)/usr"
	cd $(WRKBUILD); env PYTHONPATH=$(PYTHON_LIBDIR) $(PYTHON) ./setup.py install --prefix="$(WRKINST)/usr"

do-install:
	$(INSTALL_DIR) $(IDIR_PYREX)/usr/lib/python$(PYTHON_VERSION)
	$(CP) $(WRKINST)/usr/lib/python$(PYTHON_VERSION)/* \
		$(IDIR_PYREX)/usr/lib/python$(PYTHON_VERSION)

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
