# $NetBSD$
#

DISTNAME=	FXrays
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S/FX/fx/}-${VERSION}
CATEGORIES=	math python
MASTER_SITES=	ftp://ftp.math.uic.edu/pub/t3m/
EXTRACT_SUFX=	.tgz

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://www.math.uic.edu/~t3m/
COMMENT=	Computes extremal rays with filtering
LICENSE=	gnu-gpl-v2

VERSION=	1.0
BUILD_TARGET=	${DISTNAME}.so
PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
