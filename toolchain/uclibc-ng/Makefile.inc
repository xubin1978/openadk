# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

PKG_NAME:=		uClibc-ng
ifeq ($(ADK_LIBC_VERSION),git)
PKG_VERSION:=		git
PKG_RELEASE:=		1
PKG_SITES:=		git://uclibc-ng.org/git/uclibc-ng
endif
ifeq ($(ADK_TARGET_LIB_UCLIBC_NG_1_0_30),y)
PKG_VERSION:=		1.0.30
PKG_RELEASE:=		1
PKG_SITES:=		http://downloads.uclibc-ng.org/releases/1.0.30/
PKG_HASH:=		992bd9a2889ea385902b87e3d3d30603741eb16728288fbf537ff2027f770496
endif
DISTFILES:=		$(PKG_NAME)-$(PKG_VERSION).tar.xz
