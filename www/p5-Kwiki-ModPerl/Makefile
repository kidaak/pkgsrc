# $NetBSD: Makefile,v 1.11 2014/06/10 15:22:19 joerg Exp $

DISTNAME=	Kwiki-ModPerl-0.09
PKGNAME=	p5-${DISTNAME}
PKGREVISION=	7
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Kwiki/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.kwiki.org/
COMMENT=	Kwiki integration with ModPerl

DEPENDS+=	p5-Kwiki>=0.38:../../www/p5-Kwiki

PERL5_PACKLIST=		auto/Kwiki/ModPerl/.packlist

.include "../../mk/apache.mk"
.include "../../www/ap2-perl/buildlink3.mk"
.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
