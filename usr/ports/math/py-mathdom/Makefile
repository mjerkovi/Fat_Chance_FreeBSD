# Created by: Wen Heping <wenheping@gmail.com>
# $FreeBSD: tags/RELEASE_10_3_0/math/py-mathdom/Makefile 396894 2015-09-14 12:20:07Z amdmi3 $

PORTNAME=	mathdom
PORTVERSION=	0.8
PORTREVISION=	1
CATEGORIES=	math python
MASTER_SITES=	CHEESESHOP/source/m/${PORTNAME}/
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	ports@FreeBSD.org
COMMENT=	Content MathML in Python

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	${PYTHON_PKGNAMEPREFIX}lxml>0:${PORTSDIR}/devel/py-lxml

USES=		python
USE_PYTHON=	autoplist distutils
NO_ARCH=	yes

.include <bsd.port.mk>
