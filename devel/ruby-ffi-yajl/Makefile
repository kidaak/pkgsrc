# $NetBSD: Makefile,v 1.3 2015/03/01 13:47:14 taca Exp $

DISTNAME=	ffi-yajl-1.4.0
CATEGORIES=	devel

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://github.com/opscode/ffi-yajl
COMMENT=	Ruby FFI gem wrapper around yajl2 library
LICENSE=	mit

DEPENDS+=	${RUBY_PKGPREFIX}-ffi>=1.5:../../devel/ruby-ffi
DEPENDS+=	${RUBY_PKGPREFIX}-libyajl2>=1.2:../../devel/ruby-libyajl2

RUBYGEM_OPTIONS+=	--format-executable

.include "../../devel/yajl/buildlink3.mk"
.include "../../lang/ruby/gem.mk"
.include "../../mk/bsd.pkg.mk"
