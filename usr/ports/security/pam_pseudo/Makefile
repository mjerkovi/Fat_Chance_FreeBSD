# Created by: Jim Pirzyk <pirzyk@FreeBSD.org>
# $FreeBSD: tags/RELEASE_10_3_0/security/pam_pseudo/Makefile 393135 2015-07-28 23:28:03Z amdmi3 $

PORTNAME=	pam_pseudo
PORTVERSION=	0.5
CATEGORIES=	security
MASTER_SITES=	ftp://ftp.feep.net/pub/software/PAM/pam_pseudo/

MAINTAINER=	pirzyk@FreeBSD.org
COMMENT=	PAM module for per-user authentication

LICENSE=	BSD3CLAUSE
LICENSE_FILE=	${WRKSRC}/COPYRIGHT

USES=		libtool
GNU_CONFIGURE=	yes
CONFIGURE_ARGS=	--disable-encap --disable-epkg-install

INSTALL_TARGET=	install-real

.include <bsd.port.mk>
