# Created by: Kubilay Kocak <koobs@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/security/py-libnacl/Makefile 398833 2015-10-08 15:12:22Z olgeni $

PORTNAME=	libnacl
PORTVERSION=	1.4.3
CATEGORIES=	security python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	koobs@FreeBSD.org
COMMENT=	Python bindings for libsodium/tweetnacl based on ctypes

LICENSE=	APACHE20
LICENSE_FILE=	${WRKSRC}/LICENSE

LIB_DEPENDS=	libsodium.so:${PORTSDIR}/security/libsodium

USES=		python
USE_PYTHON=	autoplist distutils

regression-test: build
	${TOUCH} ${WRKSRC}/tests/__init__.py
	@cd ${WRKSRC} && ${PYTHON_CMD} ${PYDISTUTILS_SETUP} test

.include <bsd.port.mk>
