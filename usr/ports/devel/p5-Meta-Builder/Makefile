# $FreeBSD: tags/RELEASE_10_3_0/devel/p5-Meta-Builder/Makefile 373448 2014-11-26 13:08:24Z mat $

PORTNAME=	Meta-Builder
PORTVERSION=	0.003
PORTREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:EXODIST
PKGNAMEPREFIX=	p5-

MAINTAINER=	kuriyama@FreeBSD.org
COMMENT=	Perl extension for creating Meta objects to track custom metrics

TEST_DEPENDS=	p5-Test-Exception>=0:${PORTSDIR}/devel/p5-Test-Exception \
		p5-Fennec-Lite>=0:${PORTSDIR}/devel/p5-Fennec-Lite

USES=		perl5
USE_PERL5=	modbuild

.include <bsd.port.mk>
