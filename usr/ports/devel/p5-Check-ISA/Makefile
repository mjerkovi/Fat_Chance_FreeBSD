# Created by: chinsan
# $FreeBSD: tags/RELEASE_10_3_0/devel/p5-Check-ISA/Makefile 390494 2015-06-24 16:29:25Z adamw $

PORTNAME=	Check-ISA
PORTVERSION=	0.04
PORTREVISION=	2
CATEGORIES=	devel perl5
MASTER_SITES=	CPAN
MASTER_SITE_SUBDIR=	CPAN:NUFFIN
PKGNAMEPREFIX=	p5-

MAINTAINER=	perl@FreeBSD.org
COMMENT=	DWIM, correct checking of an object's class

RUN_DEPENDS=	p5-Sub-Exporter>=0:${PORTSDIR}/devel/p5-Sub-Exporter
BUILD_DEPENDS:=	${RUN_DEPENDS}

USES=		perl5
USE_PERL5=	configure

.include <bsd.port.pre.mk>

.if ${PERL_LEVEL} < 502200
TEST_DEPENDS+=	p5-Test-Simple>=1.001.014:${PORTSDIR}/devel/p5-Test-Simple
.endif

.include <bsd.port.post.mk>
