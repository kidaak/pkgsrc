# $NetBSD$

###########################################################
#               Generated by fbsd2pkg                     #
###########################################################

###########################################################
# Unconverted and partially converted FreeBSD port syntax:

## Created by: Jason Bacon <jwbacon@tds.net>
## $FreeBSD$
## Direct link:		http://downloads.sourceforge.net/project/parafly/parafly-r2013-01-21.tgz?r=http%3A%2F%2Fsourceforge.net%2Fprojects%2Fparafly%2F&ts=1405463589&use_mirror=iweb
## Default attempts:	http://switch.dl.sourceforge.net/project/parafly/parafly/2013.01.21/parafly-2013-01-21.tgz
## OpenMP
#USE_GCC=	any
#PLIST_FILES=	bin/ParaFly
#.include <bsd.port.mk>

PKGNAME=	parafly-2013.01.21
DISTNAME=	parafly-r2013-01-21
CATEGORIES=	sysutils
# FreeBSD MASTER_SITES: SF/${PORTNAME}/
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=parafly/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	jwbacon@tds.net

COMMENT=	Process the commands in parallel on a single server
#LICENSE=	BSD3CLAUSE

# Pessimistic assumption.  Test and change if possible.
MAKE_JOBS_SAFE=	no

#ONLY_FOR_PLATFORM=	

# Just assuming C and C++: Adjust this!
USE_LANGUAGES=	c c++
GNU_CONFIGURE=	yes
DATADIR=	${PREFIX}/share/parafly
DOCSDIR=	${PREFIX}/share/doc/parafly

# Sets OPSYS, OS_VERSION, MACHINE_ARCH, etc..
.include "../../mk/bsd.prefs.mk"

.if ${OPSYS} == "FreeBSD"
PKGSRC_COMPILER=	gcc
NOT_FOR_COMPILER=	clang
.endif

# Keep this if there are user-selectable options.
#.include "options.mk"

# You may need this, especially if using do-install.
#AUTO_MKDIRS=	yes

.include "../../mk/bsd.pkg.mk"
