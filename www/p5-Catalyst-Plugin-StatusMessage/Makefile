# $NetBSD: Makefile,v 1.6 2015/01/01 02:37:39 mef Exp $

DISTNAME=	Catalyst-Plugin-StatusMessage-1.002000
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	www perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Catalyst/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Catalyst-Plugin-StatusMessage/
COMMENT=	Handle passing of status messages between screens of a web application
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Catalyst-Runtime>=5.71001:../../www/p5-Catalyst-Runtime

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Catalyst/Plugin/StatusMessage/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
