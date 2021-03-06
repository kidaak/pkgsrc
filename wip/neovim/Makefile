# $NetBSD$

PKGNAME=	neovim-0.0.0
CATEGORIES=	editors
MASTER_SITES=	https://github.com/neovim/neovim/archive/

HOMEPAGE=	http://neovim.org/
COMMENT=	Refactor vim for the 21st century
LICENSE=	vim-license AND apache-2.0

GIT_REPOSITORIES=	neovim
GIT_REPO.neovim=	git://github.com/neovim/neovim.git
GIT_MODULE.neovim=	neovim
WRKSRC=			${WRKDIR}/${GIT_MODULE.neovim}

# should follow the LuaJIT API compatibility
LUA_VERSIONS_ACCEPTED=51

USE_LANGUAGES=	c c++
USE_CMAKE=	yes
USE_TOOLS+=	gmake

DEPENDS+=       ${LUA_PKGPREFIX}-MessagePack:../../wip/lua-MessagePack
DEPENDS+=       ${LUA_PKGPREFIX}-lpeg:../../devel/lua-lpeg

REPLACE_PERL+=	runtime/tools/pltags.pl runtime/tools/shtags.pl runtime/tools/efm_filter.pl
REPLACE_AWK+=	runtime/tools/mve.awk

.include "options.mk"

.include "../../wip/libuv/buildlink3.mk"
.include "../../wip/msgpack-git/buildlink3.mk"
.include "../../lang/LuaJIT2/buildlink3.mk"
.include "../../lang/lua/application.mk"
.include "../../devel/gettext-lib/buildlink3.mk"
.include "../../wip/libunibilium/buildlink3.mk"
.include "../../wip/libtermkey/buildlink3.mk"
.include "../../wip/libvterm/buildlink3.mk"
.include "../../wip/mk/git-package.mk"
.include "../../mk/bsd.pkg.mk"
