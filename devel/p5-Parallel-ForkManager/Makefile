# $NetBSD: Makefile,v 1.11 2015/03/15 23:51:30 mef Exp $

DISTNAME=	Parallel-ForkManager-1.12
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	parallel
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Parallel/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Parallel-ForkManager/
COMMENT=	Simple parallel processing fork manager
LICENSE=	${PERL5_LICENSE}

PERL5_PACKLIST=		auto/Parallel/ForkManager/.packlist
REPLACE_PERL+=		*/*.pl

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
