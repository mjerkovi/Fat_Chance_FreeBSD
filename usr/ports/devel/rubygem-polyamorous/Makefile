# Created by: Sunpoet Po-Chuan Hsieh <sunpoet@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/devel/rubygem-polyamorous/Makefile 404675 2015-12-28 16:28:12Z sunpoet $

PORTNAME=	polyamorous
PORTVERSION=	1.3.0
CATEGORIES=	devel rubygems
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Extraction of shared code from the Active Record Hackery gems

LICENSE=	MIT
LICENSE_FILE=	${WRKSRC}/LICENSE

RUN_DEPENDS=	rubygem-activerecord4>=3.0:${PORTSDIR}/databases/rubygem-activerecord4

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

.include <bsd.port.mk>
