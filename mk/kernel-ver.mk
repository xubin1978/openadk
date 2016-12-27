# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.
#
# On the various kernel version variables:
#
# KERNEL_FILE_VER: version numbering used for tarball and contained top level
#                  directory (e.g. linux-4.1.2.tar.bz2 -> linux-4.1.2) (not
#                  necessary equal to kernel's version, e.g. linux-3.19
#                  contains kernel version 3.19.0)
# KERNEL_RELEASE:  OpenADK internal versioning
# KERNEL_VERSION:  final kernel version how we want to identify a specific kernel

ifeq ($(ADK_TARGET_KERNEL_VERSION_GIT),y)
KERNEL_FILE_VER:=	$(ADK_TARGET_KERNEL_GIT)
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(ADK_TARGET_KERNEL_GIT_VER)
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_4_9),y)
KERNEL_FILE_VER:=	4.9
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		029098dcffab74875e086ae970e3828456838da6e0ba22ce3f64ef764f3d7f1a
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_4_8),y)
KERNEL_FILE_VER:=	4.8.11
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		cc0f42f408ba3e51f8b0e93e3d8050ff18569456d286cb2a1aca3327dd06890f
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_4_4),y)
KERNEL_FILE_VER:=	4.4.30
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		9d249133bd12dde04f434bb4a5a4a23dd42ead721803c0ba4b5742efd239995c
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_4_1),y)
KERNEL_FILE_VER:=	4.1.35
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		544af0400818a4b5ee7bca192c52e801faf7eeb22eed128c89aeb490344cc04a
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_3_18),y)
KERNEL_FILE_VER:=	3.18.44
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		5661ccb8e45ec290d16d9617056d32f54bdea1357b1b3047c9c4042c78824db2
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_3_12),y)
KERNEL_FILE_VER:=	3.12.69
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		b5b2753d17e4f95acd7c8b2bd3a6d61a8fe35ff4d9ce6189ae500b096485efdf
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_3_10),y)
KERNEL_FILE_VER:=	3.10.104
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		e3d23228b5398a484c81e9d5012bc49bbbe1eda245a05a8a4110bddb3e316c12
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_3_4),y)
KERNEL_FILE_VER:=	3.4.113
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		c474a1d630357e64ae89f374a2575fa9623e87ea1a97128c4d83f08d4e7a0b4f
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_3_2),y)
KERNEL_FILE_VER:=	3.2.83
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		db578292c43c8cbca7530723d4da4fc784e6cdadc61bff5e966bfb00dbc947e1
endif
ifeq ($(ADK_TARGET_KERNEL_VERSION_2_6_32),y)
KERNEL_FILE_VER:=	2.6.32.70
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		d7d0ee4588711d4f85ed67b65d447b4bbbe215e600a771fb87a62524b6341c43
endif
