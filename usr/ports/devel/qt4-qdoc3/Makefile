# Created by: Maxim Ignatenko <gelraen.ua@gmail.com>
# $FreeBSD: tags/RELEASE_10_3_0/devel/qt4-qdoc3/Makefile 338902 2014-01-06 16:16:52Z makc $

PORTNAME=	qdoc3
DISTVERSION=	${QT4_VERSION}
CATEGORIES=	devel textproc
PKGNAMEPREFIX=	qt4-

MAINTAINER=	kde@FreeBSD.org
COMMENT=	Qt documentation generator

USE_QT4=	qmake_build corelib gui xml
QT_DIST=	yes

HAS_CONFIGURE=	yes

ALL_TARGET=	first
CONFIGURE_ENV?=	QTDIR=${WRKSRC} PATH=${WRKSRC}/bin:$$PATH
MAKE_ENV?=	QTDIR=${WRKSRC} LD_LIBRARY_PATH=${WRKSRC}/lib:$$LD_LIBRARY_PATH \
		PATH=${WRKSRC}/bin:$$PATH
DO_NOT_EXTRACT=	demos doc examples mkspecs qmake translations \
		src/activeqt src/dbus src/multimedia src/opengl src/openvg \
		src/s60installs src/s60main src/scripttools src/sql src/svg \
		src/testlib src/winmain src/xmlpatterns
.for dne in ${DO_NOT_EXTRACT}
EXTRACT_AFTER_ARGS+=	--exclude '${DISTNAME}/${dne}'
.endfor

BUILD_WRKSRC=	${WRKSRC}/tools/${PORTNAME}
INSTALL_WRKSRC=	${BUILD_WRKSRC}

pre-configure:
	${MKDIR} ${WRKSRC}/mkspecs/modules
	${LN} -sf ${QMAKE} ${WRKSRC}/bin/qmake

.include <bsd.port.mk>
