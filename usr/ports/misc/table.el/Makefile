# Created by: Denis Shaposhnikov <dsh@vlink.ru>
# $FreeBSD: tags/RELEASE_10_3_0/misc/table.el/Makefile 345448 2014-02-21 13:56:24Z ehaupt $

PORTNAME=	table.el
PORTVERSION=	1.5.54
CATEGORIES=	misc elisp
MASTER_SITES=	SF/table/table/${PORTVERSION}
DISTNAME=	table-${PORTVERSION}.el.gz
EXTRACT_SUFX=	# empty

MAINTAINER=	dsh@vlink.ru
COMMENT=	Create and edit WYSIWYG text based embedded tables in Emacs

NO_BUILD=	yes
NO_WRKSUBDIR=	yes

EMACSLISPDIR=	${PREFIX}/share/emacs/site-lisp
XEMACSLISPDIR=	${PREFIX}/lib/xemacs/site-lisp

do-extract:
	${MKDIR} ${WRKDIR}
	${GUNZIP_CMD} -c ${DISTDIR}/${DISTNAME} > ${WRKDIR}/${PORTNAME}

do-install:
	${MKDIR} ${STAGEDIR}${EMACSLISPDIR}
	${MKDIR} ${STAGEDIR}${XEMACSLISPDIR}
	${INSTALL_DATA} ${WRKDIR}/${PORTNAME} ${STAGEDIR}${EMACSLISPDIR}
	${LN} -sf ${PORTNAME} ${STAGEDIR}${XEMACSLISPDIR}

.include <bsd.port.mk>
