# Created by: Adam Weinberger <adamw@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/sysutils/vimpager/Makefile 390871 2015-06-29 00:00:40Z adamw $

PORTNAME=	vimpager
DISTVERSION=	2.06
CATEGORIES=	sysutils

MAINTAINER=	adamw@FreeBSD.org
COMMENT=	Use ViM as a pager

LICENSE=	BSD2CLAUSE

RUN_DEPENDS=	vim:${PORTSDIR}/editors/vim

USE_GITHUB=	yes
GH_ACCOUNT=	rkitover
GH_TAGNAME=	d0bf869

OPTIONS_DEFINE=	DOCS

PLIST_FILES=	bin/vimcat bin/${PORTNAME} etc/${PORTNAME}rc
PORTDOCS=	vimcat.md vimpager.md

post-patch:
	@${REINPLACE_CMD} -e 's|share/man|man|' ${WRKSRC}/Makefile

post-install:
	@${MKDIR} ${STAGEDIR}${DOCSDIR}
	${INSTALL_DATA} ${PORTDOCS:S|^|${WRKSRC}/|} ${STAGEDIR}${DOCSDIR}

.include <bsd.port.mk>
