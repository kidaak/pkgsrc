# $NetBSD$

DISTNAME=	0.4
EGG_NAME=	pyqueue-${DISTNAME}
DIST_SUBDIR=	pyqueue
PKGNAME=	${PYPKGPREFIX}-queue-${DISTNAME}
CATEGORIES=	mail
MASTER_SITES=	https://github.com/outini/pyqueue/archive/

MAINTAINER=	ahp-nils@users.sourceforge.net
HOMEPAGE=	https://github.com/outini/pyqueue/
COMMENT=	Postfix queue control python tool
LICENSE=	gnu-gpl-v2

WRKSRC=	${WRKDIR}/pyqueue-${DISTNAME}
USE_LANGUAGES=	# none
PYTHON_VERSIONS_ACCEPTED=	27

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
