# $FreeBSD: tags/RELEASE_10_3_0/devel/liborcus/Makefile 391189 2015-07-02 20:30:52Z jkim $

PORTNAME=	liborcus
PORTVERSION=	0.9.2
CATEGORIES=	devel misc
MASTER_SITES=	http://kohei.us/files/orcus/src/

MAINTAINER=	office@FreeBSD.org
COMMENT=	Standalone file import filter library for spreadsheet documents

LICENSE=	MIT

BUILD_DEPENDS=	${LOCALBASE}/include/mdds/global.hpp:${PORTSDIR}/devel/mdds
LIB_DEPENDS=	libboost_system.so:${PORTSDIR}/devel/boost-libs

GNU_CONFIGURE=	yes
USES=		compiler:c++11-lang gmake libtool pathfix pkgconfig tar:xz
USE_LDCONFIG=	yes
INSTALL_TARGET=	install-strip

CONFIGURE_ARGS=	--disable-spreadsheet-model --disable-werror \
		--with-boost="${LOCALBASE}" \
		--with-boost-system=boost_system
CONFIGURE_ENV=	ZLIB_CFLAGS="-I/usr/include" ZLIB_LIBS="-lz"
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

.include <bsd.port.mk>
