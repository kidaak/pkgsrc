# $NetBSD$

DISTNAME=	chaco-4.3.0
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	graphics python
CATEGORIES=	wip
MASTER_SITES=	https://www.enthought.com/repo/ets/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://code.enthought.com/projects/chaco/
COMMENT=	Chaco is a Python plotting application toolkit
LICENSE=	modified-bsd

WRKSRC=		${WRKDIR}/${DISTNAME}

USE_LANGUAGES=	c c++

.include "../../lang/python/egg.mk"
.include "../../math/py-numpy/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
