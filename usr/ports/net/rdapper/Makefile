# $FreeBSD: tags/RELEASE_10_3_0/net/rdapper/Makefile 396892 2015-09-14 12:19:48Z mat $

PORTNAME=	rdapper
PORTVERSION=	20150326
CATEGORIES=	net
MASTER_SITES=	GH

MAINTAINER=	pi@FreeBSD.org
COMMENT=	Command-line Registration Data Access Protocol (RDAP) client

LICENSE=	GPLv2

RUN_DEPENDS=	p5-JSON-Path>=0:${PORTSDIR}/devel/p5-JSON-Path

USES=		perl5
USE_GITHUB=	yes
GH_ACCOUNT=	jodrell
GH_TAGNAME=	c6961117a5
USE_PERL5=	configure run

PLIST_FILES=	bin/rdapper ${SITE_MAN1}/rdapper.1.gz

.include <bsd.port.mk>
