# Created by: Aaron Dalton <aaron@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/devel/p5-FSA-Rules/Makefile 381543 2015-03-18 13:02:25Z sunpoet $

PORTNAME=	FSA-Rules
PORTVERSION=	0.35
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:DWHEELER
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	Build simple rules-based state machines in Perl

LICENSE=	ART10 GPLv1
LICENSE_COMB=	dual

BUILD_DEPENDS=	p5-GraphViz>=2:${PORTSDIR}/graphics/p5-GraphViz \
		p5-Text-Tabs+Wrap>=0:${PORTSDIR}/textproc/p5-Text-Tabs+Wrap
RUN_DEPENDS:=	${BUILD_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.mk>
