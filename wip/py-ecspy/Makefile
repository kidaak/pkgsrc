# $NetBSD$

DISTNAME=	ecspy-1.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	math python
MASTER_SITES=	http://ecspy.googlecode.com/files/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://code.google.com/p/ecspy/
COMMENT=	Framework for creating evolutionary computations in Python
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-pp>=1.6.0:../../wip/py-pp

USE_LANGUAGES=	# none

.include "../../graphics/py-matplotlib/buildlink3.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
