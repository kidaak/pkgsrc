# $NetBSD: Makefile,v 1.2 2014/10/19 22:27:44 alnsn Exp $

DISTNAME=	LuaBitOp-1.0.2
PKGNAME=	${DISTNAME:S/Lua/${LUA_PKGPREFIX}-/}
PKGREVISION=	1
CATEGORIES=	devel
MASTER_SITES=	http://bitop.luajit.org/download/

MAINTAINER=	alnsn@NetBSD.org
HOMEPAGE=	http://bitop.luajit.org/
COMMENT=	Lua module which adds bitwise operations on numbers
LICENSE=	mit

NO_CONFIGURE=	yes
USE_TOOLS+=	gmake
MAKE_FLAGS+=	LUA_CDIR=${LUA_CDIR}
MAKE_FLAGS+=	LUA_DOCDIR=${LUA_DOCDIR}
MAKE_FLAGS+=	INSTALLPATH=${DESTDIR}${PREFIX}/${LUA_CDIR}

INSTALLATION_DIRS+=	${LUA_CDIR} ${LUA_DOCDIR}

TEST_TARGET=	test

.include "../../lang/lua/module.mk"
.include "../../mk/bsd.pkg.mk"
