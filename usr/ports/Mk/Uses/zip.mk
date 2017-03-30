# $FreeBSD: tags/RELEASE_10_3_0/Mk/Uses/zip.mk 400846 2015-11-05 12:35:26Z mat $
#
# handle zip archives
#
# Feature:	zip
# Usage:	USES=zip[:infozip]
#
# MAINTAINER: portmgr@FreeBSD.org

.if !defined(_INCLUDE_USES_ZIP_MK)
_INCLUDE_USES_ZIP_MK=	yes

EXTRACT_SUFX?=	.zip

EXTRACT_BEFORE_ARGS?=	-qo
EXTRACT_AFTER_ARGS?=	-d ${EXTRACT_WRKDIR}

.if empty(zip_ARGS)
EXTRACT_CMD?=		${UNZIP_NATIVE_CMD}
.elif ${zip_ARGS} == "infozip"
EXTRACT_DEPENDS+=	${UNZIP_CMD}:${PORTSDIR}/archivers/unzip
EXTRACT_CMD?=		${UNZIP_CMD}
.else
IGNORE=	Incorrect 'USES+=zip:${zip_ARGS}' expecting 'USES+=zip[:infozip]'
.endif

.endif