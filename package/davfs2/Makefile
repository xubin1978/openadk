# This file is part of the OpenADK project. OpenADK is copyrighted
# material, please see the LICENCE file in the top-level directory.

include ${ADK_TOPDIR}/rules.mk

PKG_NAME:=		davfs2
PKG_VERSION:=		1.5.2
PKG_RELEASE:=		1
PKG_HASH:=		be34a19ab57a6ea77ecb82083e9e4c1882e12b2de64257de567ad5ee7a17b358
PKG_DESCR:=		webdav filesystem
PKG_SECTION:=		net/fs
PKG_DEPENDS:=		fuse-utils neon
PKG_BUILDDEP:=		neon fuse
PKG_URL:=		http://savannah.nongnu.org/projects/davfs2/
PKG_SITES:=		http://download.savannah.gnu.org/releases/davfs2/

PKG_LIBC_DEPENDS:=	uclibc-ng glibc

DISTFILES:=		${PKG_NAME}-${PKG_VERSION}.tar.gz

include ${ADK_TOPDIR}/mk/package.mk

$(eval $(call PKG_template,DAVFS2,davfs2,${PKG_VERSION}-${PKG_RELEASE},${PKG_DEPENDS},${PKG_DESCR},${PKG_SECTION}))

AUTOTOOLS_STYLE:=	autoreconf
CONFIGURE_ARGS+=	--with-neon
CONFIGURE_ENV+=		ac_cv_func_malloc_0_nonnull=yes

davfs2-install:
	${INSTALL_DIR} ${IDIR_DAVFS2}/etc/davfs2
	${INSTALL_DIR} ${IDIR_DAVFS2}/usr/sbin
	$(CP) ${WRKINST}/etc/davfs2/{davfs2.conf,secrets} \
		${IDIR_DAVFS2}/etc/davfs2
	${INSTALL_BIN} ${WRKINST}/usr/sbin/mount.davfs \
		${IDIR_DAVFS2}/usr/sbin
	${INSTALL_BIN} ${WRKINST}/usr/sbin/umount.davfs \
		${IDIR_DAVFS2}/usr/sbin

include ${ADK_TOPDIR}/mk/pkg-bottom.mk
