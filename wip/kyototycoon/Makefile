# $NetBSD$
#

DISTNAME=	kyototycoon-0.9.38
CATEGORIES=	databases
MASTER_SITES=	http://fallabs.com/kyototycoon/pkg/

MAINTAINER=	msporleder@gmail.com
HOMEPAGE=	http://fallabs.com/kyototycoon/
COMMENT=	Kyoto Tycoon is a lightweight database server for Kyoto Cabinet
LICENSE=	gnu-gpl-v3

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config
USE_TOOLS+=	gmake
USE_LANGUAGES=	c c++

GNU_CONFIGURE=	yes
USE_TOOLS+=	pkg-config

CONFIGURE_ARGS+=	--enable-lua

PKGCONFIG_OVERRIDE+=	kyototycoon.pc.in

.include "../../lang/lua/buildlink3.mk"
.include "../../wip/kyotocabinet/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
