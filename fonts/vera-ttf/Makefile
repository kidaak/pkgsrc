# $NetBSD: Makefile,v 1.15 2014/06/01 16:35:37 wiz Exp $
#

DISTNAME=	ttf-bitstream-vera-1.10
PKGNAME=	vera-ttf-1.10
PKGREVISION=	5
CATEGORIES=	fonts
MASTER_SITES=	${MASTER_SITE_GNOME:=sources/ttf-bitstream-vera/1.10/}
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.gnome.org/fonts/
COMMENT=	Bitstream Vera TrueType fonts

USE_X11BASE=	YES
NO_CONFIGURE=	YES
NO_BUILD=	YES

USE_TOOLS+=	pax

INSTALLATION_DIRS=	share/fonts/X11/TTF \
			share/doc/vera-ttf share/examples/vera-ttf
FONTS_DIRS.ttf=	${PREFIX}/share/fonts/X11/TTF

do-install:
	cd ${WRKSRC} && pax -rw -pm *.ttf ${DESTDIR}${FONTS_DIRS.ttf}
	${INSTALL_DATA} ${WRKSRC}/local.conf ${DESTDIR}${PREFIX}/share/examples/vera-ttf
	cd ${WRKSRC} && ${INSTALL_DATA} *.TXT ${DESTDIR}${PREFIX}/share/doc/vera-ttf

.include "../../mk/bsd.pkg.mk"
