# $NetBSD$

DISTNAME=	checkstyle-6.4.1-all
PKGNAME=	${DISTNAME:S/-all//}
CATEGORIES=	devel java
MASTER_SITES=	http://garr.dl.sourceforge.net/project/checkstyle/checkstyle/6.4.1/
EXTRACT_SUFX=	.jar

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	http://checkstyle.sourceforge.net/
COMMENT=	Static code analysis tool for Java
LICENSE=	gnu-lgpl-v2.1

WRKSRC=		${WRKDIR}

USE_LANGUAGES=	# none

INSTALLATION_DIRS=	bin lib/java

do-build:
	printf "#! ${SH}\\nexec ${JAVA_BINPREFIX}-java -jar ${PREFIX}/lib/java/${DISTNAME}.jar \"\$$@\"\\n" > ${WRKSRC}/checkstyle.sh

do-install:
	${INSTALL_SCRIPT} ${WRKSRC}/checkstyle.sh ${DESTDIR}${PREFIX}/bin/checkstyle
	${INSTALL_DATA} ${WRKSRC}/${DISTNAME}.jar ${DESTDIR}${PREFIX}/lib/java/

.include "../../mk/java-vm.mk"
.include "../../mk/bsd.pkg.mk"
