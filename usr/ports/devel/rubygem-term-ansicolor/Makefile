# Created by: Cheng-Lung Sung <clsung@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/devel/rubygem-term-ansicolor/Makefile 402768 2015-12-01 17:03:52Z sunpoet $

PORTNAME=	term-ansicolor
PORTVERSION=	1.3.2
CATEGORIES=	devel ruby
MASTER_SITES=	RG

MAINTAINER=	sunpoet@FreeBSD.org
COMMENT=	Term::ANSIColor for Ruby

LICENSE=	GPLv2
LICENSE_FILE=	${WRKSRC}/COPYING

RUN_DEPENDS=	rubygem-tins>=1.0:${PORTSDIR}/devel/rubygem-tins

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes

PLIST_FILES=	bin/colortab bin/term_display bin/term_cdiff bin/term_decolor bin/term_mandel

post-install:
	${MV} ${STAGEDIR}${PREFIX}/bin/cdiff ${STAGEDIR}${PREFIX}/bin/term_cdiff
	${MV} ${STAGEDIR}${PREFIX}/bin/decolor ${STAGEDIR}${PREFIX}/bin/term_decolor

.include <bsd.port.mk>
