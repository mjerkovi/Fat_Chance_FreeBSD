# Created by: Amar Takhar <verm@drunkmonk.net>
# $FreeBSD: tags/RELEASE_10_3_0/dns/fastresolve/Makefile 383898 2015-04-13 06:51:44Z danfe $

PORTNAME=	fastresolve
PORTVERSION=	2.10
PORTREVISION=	5
CATEGORIES=	dns
MASTER_SITES=	http://BSDforge.com/projects/source/dns/fastresolve/

MAINTAINER=	portmaster@BSDforge.com
COMMENT=	Programs to get DNS and domain ownership information from web logs

LICENSE=	GPLv2

LIB_DEPENDS=	libadns.so:${PORTSDIR}/dns/adns
RUN_DEPENDS=	p5-BerkeleyDB>=0:${PORTSDIR}/databases/p5-BerkeleyDB

USES=		perl5 tar:bzip2
USE_BDB=	yes
GNU_CONFIGURE=	yes
CONFIGURE_ENV=	PERL=${PERL} \
		djm_cv_lib_db_Dbopen=yes

LDFLAGS+=	-L${LOCALBASE}/lib -L${BDB_LIB_DIR}
CXXFLAGS+=	-I${LOCALBASE}/include -I${BDB_INCLUDE_DIR}

OPTIONS_DEFINE=	DOCS

post-patch:
	@${REINPLACE_CMD} -e 's/-ldb"/-l${BDB_LIB_CXX_NAME}"/' \
		${WRKSRC}/configure

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
.for f in AUTHORS COPYING ChangeLog INSTALL NEWS README
	${INSTALL_DATA} ${WRKSRC}/${f} ${STAGEDIR}${DOCSDIR}
.endfor
	${INSTALL_DATA} ${WRKSRC}/doc/TODO ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/timings ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
