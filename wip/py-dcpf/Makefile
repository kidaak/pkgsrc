# $NetBSD$

DISTNAME=	pydcpf-1.4
PKGNAME=	${PYPKGPREFIX}-${DISTNAME:S//py/}
CATEGORIES=	comms python
MASTER_SITES=	https://pypi.python.org/packages/source/p/pydcpf/

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	https://pypi.python.org/packages/source/p/pydcpf/
COMMENT=	Python device communications protocol framework
LICENSE=	gnu-gpl-v3

DEPENDS+=	${PYPKGPREFIX}-serial>=2.7:../../comms/py-serial

WRKSRC=		${WRKDIR}/pydcpf-1.4

USE_LANGUAGES=	# none

PYDISTUTILSPKG=	yes

.include "../../lang/python/extension.mk"
.include "../../mk/bsd.pkg.mk"
