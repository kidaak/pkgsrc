# $NetBSD: Makefile,v 1.3 2015/01/26 14:16:31 mef Exp $
#

DISTNAME=	Lingua-EN-FindNumber-1.30
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	textproc perl5
MASTER_SITES=   ${MASTER_SITE_PERL_CPAN:=Lingua/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://search.cpan.org/dist/Lingua-EN-FindNumber/
COMMENT=	Inflect short English Phrases
LICENSE=	${PERL5_LICENSE}

DEPENDS+=	p5-Lingua-EN-Words2Nums-[0-9]*:../../textproc/p5-Lingua-EN-Words2Nums

USE_LANGUAGES=		# empty
PERL5_PACKLIST=		auto/Lingua/EN/FindNumber/.packlist
PERL5_MODULE_TYPE=	Module::Install::Bundled

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
