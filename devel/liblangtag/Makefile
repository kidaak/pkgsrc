# $NetBSD: Makefile,v 1.5 2014/05/27 18:15:21 wiz Exp $

DISTNAME=	liblangtag-0.5.4
CATEGORIES=	devel
MASTER_SITES=	https://bitbucket.org/tagoh/liblangtag/downloads/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	jaapb@NetBSD.org
HOMEPAGE=	http://tagoh.bitbucket.org/liblangtag/
COMMENT=	RFC 5646 language tag interface library
LICENSE=	gnu-lgpl-v3 OR mpl-2.0

GNU_CONFIGURE=	yes
USE_TOOLS+=	autoconf pkg-config
USE_LIBTOOL=	yes
USE_LANGUAGES+=	c
PKGCONFIG_OVERRIDE+=	liblangtag.pc.in

pre-configure:
	cd ${WRKSRC} && autoconf

.include "../../devel/glib2/buildlink3.mk"
.include "../../textproc/libxml2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
