# $NetBSD: Makefile,v 1.27 2014/10/07 16:47:11 adam Exp $

DISTNAME=	mono-addins-1.0
PKGREVISION=	6
CATEGORIES=	devel
MASTER_SITES=	-http://download-codeplex.sec.s-msft.com/Download/Release?ProjectName=monoaddins&DownloadId=509482&FileTime=129948574181430000&Build=19556

MAINTAINER=	kefren@NetBSD.org
HOMEPAGE=	http://www.mono-project.com/Mono.Addins
COMMENT=	Framework for creating extensible applications
LICENSE=	mit

GNU_CONFIGURE=	yes
USE_TOOLS+=	gmake pkg-config
MAKE_JOBS_SAFE=	no
ALL_ENV+=	PLATFORM=

.include "../../lang/mono2/buildlink3.mk"
.include "../../x11/gtk-sharp/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
