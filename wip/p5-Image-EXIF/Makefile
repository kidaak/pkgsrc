# $NetBSD$

DISTNAME=	Image-EXIF-1.00.3
PKGNAME=	p5-${DISTNAME}
CATEGORIES=	graphics perl5
MASTER_SITES=	${MASTER_SITE_PERL_CPAN:=Image/}
EXTRACT_SUFX=	.tgz

MAINTAINER=	kuli0020@umn.edu
HOMEPAGE=	http://cpan.uwinnipeg.ca/dist/Image-EXIF
COMMENT=	Perl extension for exif library

PKG_DESTDIR_SUPPORT=	none

PERL5_PACKLIST= auto/Image/EXIF/.packlist

.include "../../lang/perl5/module.mk"
.include "../../mk/bsd.pkg.mk"
