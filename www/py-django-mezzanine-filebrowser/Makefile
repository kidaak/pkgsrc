# $NetBSD: Makefile,v 1.6 2014/12/31 13:57:30 wiz Exp $

DISTNAME=	filebrowser-safe-0.2.13
PKGNAME=	${PYPKGPREFIX}-django-mezzanine-${DISTNAME:S/-safe//}
PKGREVISION=	2
CATEGORIES=	www
MASTER_SITES=	${MASTER_SITE_LOCAL}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	ryoon@NetBSD.org
HOMEPAGE=	https://github.com/stephenmcd/filebrowser-safe/
COMMENT=	Mezzanine CMS django filebrowser
LICENSE=	modified-bsd

DEPENDS+=	${PYPKGPREFIX}-django-[0-9]*:../../www/py-django

USE_PKGLOCALEDIR=	yes
USE_LANGUAGES=		# none

PYTHON_VERSIONS_INCOMPATIBLE=	33 34 # not yet ported as of 0.2.13

.include "../../lang/python/distutils.mk"
.include "../../mk/bsd.pkg.mk"
