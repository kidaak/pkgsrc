# $NetBSD$
#

DISTNAME=	evolution-couchdb-0.5.1
PKGREVISION=	1
CATEGORIES=	mail
MASTER_SITES=	ftp://ftp.gnome.org/pub/gnome/sources/evolution-couchdb/0.5/
EXTRACT_SUFX=	.tar.bz2

MAINTAINER=	kamelderouiche@yahoo.com
HOMEPAGE=	https://launchpad.net/evolution-couchdb
COMMENT=	Evolution backend to access CouchDBs
LICENSE=	gnu-gpl-v2

GNU_CONFIGURE=	yes
USE_PKGLOCALEDIR= yes
USE_LIBTOOL=	yes
USE_TOOLS+=	pkg-config gmake intltool msgfmt

.include "../../devel/glib2/buildlink3.mk"
.include "../../mail/evolution/buildlink3.mk"
.include "../../mail/evolution-data-server/buildlink3.mk"
BUILDLINK_API_DEPENDS.gnome-keyring+=	gnome-keyring>=0.4.0
.include "../../security/gnome-keyring/buildlink3.mk"
BUILDLINK_API_DEPENDS.couchdb-glib+=	couchdb-glib>=0.5.3
.include "../../wip/couchdb-glib/buildlink3.mk"
.include "../../x11/gtk2/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
