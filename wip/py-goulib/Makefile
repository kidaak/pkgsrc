# $NetBSD$

DISTNAME=	Goulib-1.7.1
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	math python
MASTER_SITES=	https://pypi.python.org/packages/source/G/Goulib/
EXTRACT_SUFX=	.zip

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://github.com/goulu/goulib
COMMENT=	Library of useful Python code for scientific + technical applications
LICENSE=	gnu-lgpl-v3

USE_LANGUAGES=	# none

PYDISTUTILSPKG=	yes

.include "../../graphics/py-matplotlib/buildlink3.mk"
#DEPENDS+=		${PYPKGPREFIX}-Pillow>=2.4.0:../../graphics/py-Pillow
.include "../../lang/python/extension.mk"
DEPENDS+=		${PYPKGPREFIX}-six>=1.7.2:../../lang/py-six
DEPENDS+=		${PYPKGPREFIX}-networkx>=1.8.1:../../math/py-networkx
.include "../../math/py-numpy/buildlink3.mk"
DEPENDS+=		${PYPKGPREFIX}-scipy>=0.12.0:../../math/py-scipy
DEPENDS+=		${PYPKGPREFIX}-lxml>=3.3.5:../../textproc/py-lxml
DEPENDS+=		${PYPKGPREFIX}-xlrd>=0.9.2:../../textproc/py-xlrd
.include "../../mk/bsd.pkg.mk"
