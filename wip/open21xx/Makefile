# $NetBSD$
#

DISTNAME=		open21xx0.7.2
PKGNAME=		open21xx-0.7.2
CATEGORIES=		lang
MASTER_SITES=	http://www3.telus.net/sharpshin/downloads/

MAINTAINER=		ianzag@mail.ru
HOMEPAGE=		http://www3.telus.net/sharpshin/adi.html
COMMENT=		Assembler tool suite for the Analog Devices 21xx family of DSP

PKG_DESTDIR_SUPPORT=	none

USE_LANGUAGES=	c
USE_TOOLS+=	gmake bison

.include "../../devel/flex/buildlink3.mk"
.include "../../devel/libelf/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
