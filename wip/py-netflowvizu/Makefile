# $NetBSD$

DISTNAME=	NetFlowVizu-0.6
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:tl}
CATEGORIES=	graphics python
MASTER_SITES=	https://pypi.python.org/packages/source/N/NetFlowVizu/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://www.smallbulb.net/netflowvizu
COMMENT=	Network flow visualizer
LICENSE=  	mit

DEPENDS+=	${PYPKGPREFIX}-yaml>=3.10:../../textproc/py-yaml

WRKSRC=		${WRKDIR}/NetFlowVizu-0.6
USE_LANGUAGES=	# none

PLIST_SUBST+=	PYVERSSUFFIX=${PYVERSSUFFIX}

PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # py-xml

post-extract:
	${MV} ${WRKSRC}/net_flow_vizu_dia.py ${WRKSRC}/net_flow_vizu_dia.py${PYVERSSUFFIX}

.include "../../lang/python/egg.mk"
.include "../../textproc/py-xml/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
