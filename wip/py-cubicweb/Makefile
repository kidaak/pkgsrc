# $NetBSD$

DISTNAME=	cubicweb-3.19.3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	www python
MASTER_SITES=	https://pypi.python.org/packages/source/c/cubicweb/

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://www.cubicweb.org/
COMMENT=	Repository of entities / relations for knowledge management
LICENSE=	gnu-lgpl-v2.1 AND gnu-gpl-v2


DEPENDS+=	${PYPKGPREFIX}-passlib>=1.6.2../../security/py-passlib
DEPENDS+=	${PYPKGPREFIX}-lxml>=3.3.5:../../textproc/py-lxml
DEPENDS+=	${PYPKGPREFIX}-rql>=0.33.0:../../wip/py-rql

USE_LANGUAGES=	# none

.include "../../devel/py-logilab-common/buildlink3.mk"
.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
