# $FreeBSD: tags/RELEASE_10_3_0/editors/nano-devel/Makefile 403680 2015-12-13 18:08:45Z danilo $

PORTNAME=	nano
PORTVERSION=	2.5.0
CATEGORIES=	editors
MASTER_SITES=	http://www.nano-editor.org/dist/v${PORTVERSION:R}/ \
		GNU

PKGNAMESUFFIX=	-devel

MAINTAINER=	danilo@FreeBSD.org
COMMENT=	Nano's ANOther editor, an enhanced free Pico clone

LICENSE=	GPLv3

CONFLICTS=	nano-2*

GNU_CONFIGURE=	yes

CONFIGURE_ARGS+=	--docdir=${DOCSDIR} --enable-utf8
MAKE_ARGS+=	install_htmlmanDATA=install-htmlmanDATA
CPPFLAGS+=	-I${LOCALBASE}/include
LDFLAGS+=	-L${LOCALBASE}/lib

OPTIONS_DEFINE=	DOCS EXAMPLES NLS
OPTIONS_SUB=	yes

NLS_USES=		gettext
NLS_CONFIGURE_ENABLE=	nls

INFO=		nano

PORTSCOUT=	limitw:1,odd

post-build:
	cd ${WRKSRC}/doc/man; ${REINPLACE_CMD} \
		-e 's:SYSCONFDIR:${PREFIX}/etc:g' \
		-e 's:EXAMPLESDIR:${EXAMPLESDIR}:g' \
		nano.1 rnano.1 nanorc.5 ${WRKSRC}/doc/texinfo/${INFO:=.info}
	${REINPLACE_CMD} -e 's/\\</[[:<:]]/g' -e 's/\\>/[[:>:]]/g' \
		${WRKSRC}/doc/syntax/*.nanorc

post-install:
	${MKDIR} ${STAGEDIR}${EXAMPLESDIR}
	${INSTALL_DATA} ${WRKSRC}/doc/nanorc.sample ${STAGEDIR}${EXAMPLESDIR}

.include <bsd.port.mk>
