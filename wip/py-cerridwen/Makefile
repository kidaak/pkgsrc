# $NetBSD$

DISTNAME=	cerridwen-1.3.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	time python
MASTER_SITES=	https://pypi.python.org/packages/source/c/cerridwen/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://cerridwen.viridian-project.de/
COMMENT=	Accurate solar system data for everyone
LICENSE=	mit

DEPENDS+=	${PYPKGPREFIX}-astropy>=0.3.1:../../wip/py-astropy
DEPENDS+=	${PYPKGPREFIX}-pyswisseph-[0-9]*:../../wip/py-pyswisseph

PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # py-astropy

USE_LANGUAGES=	# none

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
