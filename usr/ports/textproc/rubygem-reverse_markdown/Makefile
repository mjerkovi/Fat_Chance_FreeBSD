# $FreeBSD: tags/RELEASE_10_3_0/textproc/rubygem-reverse_markdown/Makefile 401911 2015-11-19 01:59:11Z araujo $

PORTNAME=	reverse_markdown
PORTVERSION=	1.0.0
CATEGORIES=	textproc rubygems
MASTER_SITES=	RG

MAINTAINER=	mose@mose.com
COMMENT=	Convert html code into markdown

LICENSE=	MIT

RUN_DEPENDS=	rubygem-nokogiri>=1.6.6.2:${PORTSDIR}/textproc/rubygem-nokogiri

NO_ARCH=	yes
USE_RUBY=	yes
USE_RUBYGEMS=	yes
RUBYGEM_AUTOPLIST=	yes
PLIST_FILES=	bin/reverse_markdown

.include <bsd.port.mk>
