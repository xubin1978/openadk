# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

# GNU make and BSD make compatible make file wrapper
MAKECMDGOALS+= ${.TARGETS}

all v allmodconfig allnoconfig allyesconfig help pkg-help dev-help targethelp kernelconfig image menuconfig defconfig oldconfig download clean cleankernel cleansystem cleandir distclean hostclean hostpackage fetch package extract patch dep menu newpackage host-update-patches update-patches:
	@./scripts/prereq.sh ${MAKECMDGOALS}
