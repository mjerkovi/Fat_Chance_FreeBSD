# Created by: Tim Welch <ports@thepentagon.org>
# $FreeBSD: tags/RELEASE_10_3_0/news/nzbperl/Makefile 361440 2014-07-10 12:13:11Z olgeni $

PORTNAME=	nzbperl
PORTVERSION=	0.6.8
PORTREVISION=	1
CATEGORIES=	news
MASTER_SITES=	http://www.thepentagon.org/local_distfiles/ \
		http://noisybox.net/computers/nzbperl/ \
		ftp://ftp.foss.org.my/pub/FreeBSD/misc/
DISTNAME=	${PORTNAME}-${PORTVERSION}.pl
EXTRACT_SUFX=

MAINTAINER=	ports@thepentagon.org
COMMENT=	Perl script for downloading nzb files

RUN_DEPENDS=	p5-XML-DOM>=0:${PORTSDIR}/textproc/p5-XML-DOM \
		p5-Term-ReadKey>=0:${PORTSDIR}/devel/p5-Term-ReadKey \
		uudeview:${PORTSDIR}/converters/uudeview

PLIST_FILES=	bin/${PORTNAME}
NO_BUILD=	yes
USES=		perl5 shebangfix
USE_PERL5=	run
SHEBANG_FILES=	${DISTNAME}
WRKSRC=		${WRKDIR}

OPTIONS_DEFINE=	SSL
SSL_RUN_DEPENDS=p5-Net-SSLeay>=0:${PORTSDIR}/security/p5-Net-SSLeay

do-extract:
	@${MKDIR} ${WRKDIR}
	${CP} ${DISTDIR}/${DISTNAME} ${WRKDIR}

do-install:
	${INSTALL_SCRIPT} ${WRKDIR}/${DISTNAME} ${STAGEDIR}${PREFIX}/bin/${PORTNAME}

.include <bsd.port.mk>
