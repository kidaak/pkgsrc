# $NetBSD$
#

DISTNAME=		manual-split
PKGNAME=		mysql-docs-0
WRKSRC=			${WRKDIR}
CATEGORIES=		misc
MASTER_SITES=		http://mysql.belnet.be/Downloads/Manual/

MAINTAINER=		pkgsrc-users@NetBSD.org
HOMEPAGE=		http://www.mysql.com/
COMMENT=		Latest documentation for MySQL database server

HTMLDIR=	share/doc/${PKGNAME}
PLIST_SRC=	${WRKDIR}/.PLIST_SRC
NO_BUILD=	yes
USE_TOOLS+=	pax

do-install:
	${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/${HTMLDIR}
	${CAT} ${PKGDIR}/PLIST.pre >${PLIST_SRC}
	cd ${WRKSRC} && pax -rw -pe manual_* ${DESTDIR}${PREFIX}/${HTMLDIR}
	cd ${PREFIX} && ${FIND} ${HTMLDIR} -type f -print >>${PLIST_SRC}

.include "../../mk/bsd.pkg.mk"
