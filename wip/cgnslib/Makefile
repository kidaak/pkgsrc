# $NetBSD$
#

DISTNAME=	cgnslib_3.1.3-2
PKGNAME=	cgnslib-3.1.3-2
CATEGORIES=	math
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=cgns/}

MAINTAINER=	jihbed.research@gmail.com
HOMEPAGE=	http://www.cgns.org/
COMMENT=	CFD General Notation System library code
LICENSE=	png-license

WRKSRC=		${WRKDIR}/cgnslib_3.1.3

USE_CMAKE=	yes
USE_LANGUAGES=	c c++ fortran

.include "../../devel/hdf5/buildlink3.mk"
.include "../../mk/mpi.buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
