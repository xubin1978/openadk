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

ifeq ($(ADK_KERNEL_VERSION_GIT),y)
KERNEL_FILE_VER:=	$(ADK_KERNEL_HASH)
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
endif
ifeq ($(ADK_KERNEL_VERSION_4_1_6),y)
KERNEL_FILE_VER:=	4.1.6
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		912d6ec42dce8c1139ffee7523abb1a048fec1ae5b83a8f95d0ce6d34a3b99fe
endif
ifeq ($(ADK_KERNEL_VERSION_3_18_16),y)
KERNEL_FILE_VER:=	3.18.16
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		d98e8dc54cdb0d0cdf42533413f4079c983899a5dbd5a46c4c62ea5715184530
endif
ifeq ($(ADK_KERNEL_VERSION_3_14_45),y)
KERNEL_FILE_VER:=	3.14.45
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		8c745b47b3ae0631b2e59423dc255dccbc64d599f9183b390b442dd500e5cb49
endif
ifeq ($(ADK_KERNEL_VERSION_3_12_44),y)
KERNEL_FILE_VER:=	3.12.44
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		08a64346a8dcb7e938b2a8a34fc94ac0207b8e2ab5884e761458c6151359de15
endif
ifeq ($(ADK_KERNEL_VERSION_3_10_81),y)
KERNEL_FILE_VER:=	3.10.81
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		cf8e4c6e67783aa65ab52eda043054945f4d0da0cf739ad90841f4e4354fea43
endif
ifeq ($(ADK_KERNEL_VERSION_3_4_108),y)
KERNEL_FILE_VER:=	3.4.108
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		55c65bc82a6168625ffc8145a644515e77047684f30f7382456948619763be75
endif
ifeq ($(ADK_KERNEL_VERSION_3_2_69),y)
KERNEL_FILE_VER:=	3.2.69
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		a331bf981114f0959a543c47210dd455c47971017d3ee74fa72d14bb8754473b
endif
ifeq ($(ADK_KERNEL_VERSION_2_6_32_67),y)
KERNEL_FILE_VER:=	2.6.32.67
KERNEL_RELEASE:=	1
KERNEL_VERSION:=	$(KERNEL_FILE_VER)-$(KERNEL_RELEASE)
KERNEL_HASH:=		b472eb8758404dcbbcdb0fdce60b98e60aadcb4408c485faef5ab7a29cf994b0
endif
