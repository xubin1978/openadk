ifeq ($(ADK_KERNEL_VERSION_3_15_4),y)
KERNEL_VERSION:=	3.15.4
KERNEL_MOD_VERSION:=	$(KERNEL_VERSION)
KERNEL_RELEASE:=	1
KERNEL_MD5SUM:=		5525ef4f6f577682d7ea2bf992aa6bcf
endif
ifeq ($(ADK_KERNEL_VERSION_3_14_9),y)
KERNEL_VERSION:=	3.14.9
KERNEL_MOD_VERSION:=	$(KERNEL_VERSION)
KERNEL_RELEASE:=	1
KERNEL_MD5SUM:=		62b80f9ab490db3bfe0b308a0d3f6f1f
endif
ifeq ($(ADK_KERNEL_VERSION_3_12_23),y)
KERNEL_VERSION:=	3.12.23
KERNEL_MOD_VERSION:=	$(KERNEL_VERSION)
KERNEL_RELEASE:=	1
KERNEL_MD5SUM:=		c38a7f1847a87ce98a3180690ffa7f38
endif
ifeq ($(ADK_KERNEL_VERSION_3_10_45),y)
KERNEL_VERSION:=	3.10.45
KERNEL_MOD_VERSION:=	$(KERNEL_VERSION)
KERNEL_RELEASE:=	1
KERNEL_MD5SUM:=		da5bb3b880716b522ede4a0d7656e221
endif
ifeq ($(ADK_KERNEL_VERSION_3_4_95),y)
KERNEL_VERSION:=	3.4.95
KERNEL_MOD_VERSION:=	$(KERNEL_VERSION)
KERNEL_RELEASE:=	1
KERNEL_MD5SUM:=		52761b11c3c3a949747983a3b675f2e1
endif
