# $NetBSD$

DISTNAME=	mochi-0.1.5
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	lang python
MASTER_SITES=	https://pypi.python.org/packages/source/m/mochi/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://github.com/i2y/mochi
COMMENT=	Dynamically typed functional programming language
LICENSE=	mit

USE_LANGUAGES=	# none

PYTHON_VERSIONS_ACCEPTED=	34 33

DEPENDS+=       ${PYPKGPREFIX}-greenlet>=0.4.1:../../devel/py-greenlet
#DEPENDS+=	   ${PYPKGPREFIX}-rply>=0.16.1:../../devel/py-rply
.include "../../lang/python/egg.mk"
DEPENDS+=	${PYPKGPREFIX}-eventlet>=0.16.1:../../wip/py-eventlet
DEPENDS+=	${PYPKGPREFIX}-rsistent>=0.7.1:../../wip/py-rsistent
.include "../../mk/bsd.pkg.mk"
