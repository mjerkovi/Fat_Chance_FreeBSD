# Created by: Wen Heping <wen@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/databases/py-dbf/Makefile 396393 2015-09-08 15:31:20Z amdmi3 $

PORTNAME=	dbf
PORTVERSION=	0.95.012
PORTREVISION=	1
CATEGORIES=	databases python
MASTER_SITES=	CHEESESHOP
PKGNAMEPREFIX=	${PYTHON_PKGNAMEPREFIX}

MAINTAINER=	wen@FreeBSD.org
COMMENT=	Pure python package for reading/writing dbf files

LICENSE=	BSD3CLAUSE

USES=		python zip
USE_PYTHON=	distutils
PYDISTUTILS_EGGINFO=	dbf-${PORTVERSION:C/\.0/./}-py${PYTHON_VER}.egg-info
NO_ARCH=	yes

.include <bsd.port.mk>
