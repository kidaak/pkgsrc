# $NetBSD$

DISTNAME=		visionegg-0.9.9-demo
PKGNAME=		${PYPKGPREFIX}-visionegg-demo-0.9.9
PKGREVISION=		3
CATEGORIES=		misc
MASTER_SITES=		${MASTER_SITE_SOURCEFORGE:=visionegg/}

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://visionegg.sourceforge.net/
COMMENT=		Demonstration programs for py-visionegg

NO_BUILD=		yes
USE_TOOLS+=		pax

PLIST_SUBST+=		PYVERSSUFFIX=${PYVERSSUFFIX:Q}
MESSAGE_SUBST+=		PY_VE_DIR=${PY_VE_DEMO_DIR}

PY_VE_DEMO_DIR=		${PREFIX}/share/VisionEgg-${PYVERSSUFFIX}/demo

PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # py-Numeric and py-OpenGL via py-visionegg

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PY_VE_DEMO_DIR}
	cd ${WRKSRC}/demo && pax -rw -pp * ${DESTDIR}${PY_VE_DEMO_DIR}

.include "../../wip/py-visionegg/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
