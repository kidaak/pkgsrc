# $NetBSD: Makefile,v 1.12 2014/09/07 20:33:59 wiz Exp $

DISTNAME=	trueskill-0.4.3
PKGNAME=	${PYPKGPREFIX}-${DISTNAME}
CATEGORIES=	games devel
MASTER_SITES=	http://pypi.python.org/packages/source/t/trueskill/

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://trueskill.org/
COMMENT=	Python module implementing the TrueSkill rating system
LICENSE=	2-clause-bsd

# actually TEST_DEPENDS
#BUILD_DEPENDS+=	${PYPKGPREFIX}-mpmath>=0.17:../../math/py-mpmath
#BUILD_DEPENDS+=	${PYPKGPREFIX}-test-[0-9]*:../../devel/py-test
#BUILD_DEPENDS+=	${PYPKGPREFIX}-almost>=0.1.5:../../math/py-almost

USE_LANGUAGES=			# none

.include "../../lang/python/egg.mk"
.include "../../mk/bsd.pkg.mk"
