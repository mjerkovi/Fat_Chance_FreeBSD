# Created by: netch@netch.kiev.ua
# $FreeBSD: tags/RELEASE_10_3_0/net/freeradius-client/Makefile 361954 2014-07-15 15:40:58Z tijl $

PORTNAME=	freeradius-client
PORTVERSION=	1.1.6
PORTREVISION=	1
CATEGORIES=	net
MASTER_SITES=	ftp://ftp.freeradius.org/pub/freeradius/ \
		ftp://ftp.suntel.com.tr/pub/freeradius/

MAINTAINER=	netch@portaone.com
COMMENT=	Client library and basic utilities for RADIUS AAA

GNU_CONFIGURE=	yes
INSTALL_TARGET=	install-strip
USES=		gmake libtool tar:bzip2
USE_LDCONFIG=	yes

CONFLICTS=	radiusclient-ng-[0-9]*

.include <bsd.port.mk>
