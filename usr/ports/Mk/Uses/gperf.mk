# $FreeBSD: tags/RELEASE_10_3_0/Mk/Uses/gperf.mk 399326 2015-10-15 07:36:38Z bapt $
#
# handle dependency on gperf
#
# Feature:	gperf
# Usage:	USES=gperf
#
# Take no arguments

.if !defined(_INCLUDE_USES_GPERF_MK)
_INCLUDE_USES_GPERF_MK=	yes

.if !exists(/usr/bin/gperf)
BUILD_DEPENDS+=	${LOCALBASE}/bin/gperf:${PORTSDIR}/devel/gperf
GPERF=	${LOCALBASE}/bin/gperf
.else
_GPERF_VERSION!=	/usr/bin/gperf --version | head -1 || true
_GPERF_MAJ_VERSION=	${_GPERF_VERSION:M[0-9].[0-9].[0-9]:C/.*([0-9]).[0-9].[0-9].*/\1/g}

.if empty(_GPERF_MAJ_VERSION)
_GPERF_MAJ_VERSION=	0
.endif

.if ${_GPERF_MAJ_VERSION} < 3
BUILD_DEPENDS+=	${LOCALBASE}/bin/gperf:${PORTSDIR}/devel/gperf
GPERF=	${LOCALBASE}/bin/gperf
.else
GPERF=	/usr/bin/gperf
.endif
.endif

CONFIGURE_ENV+=	GPERF=${GPERF}
MAKE_ENV+=	GPERF=${GPERF}

.endif