# $NetBSD$
#

DISTNAME=	Horde_Mime-1.6.0
CATEGORIES=	devel
MASTER_SITES=	http://pear.horde.org/get/

MAINTAINER=	frederic@fauberteau.org
HOMEPAGE=	http://pear.horde.org/
COMMENT=	MIME manipulation for horde
LICENSE=	gnu-lgpl-v2.1

BUILD_DEPENDS+=	${PHP_PKG_PREFIX}-pear-channel-horde-[0-9]*:../../wip/pear-channel-horde
DEPENDS+=	${PHP_PKG_PREFIX}-pear-Horde_Exception-[0-9]*:../../wip/pear-Horde_Exception
DEPENDS+=	${PHP_PKG_PREFIX}-pear-Horde_Stream_Filter-[0-9]*:../../wip/pear-Horde_Stream_Filter
DEPENDS+=	${PHP_PKG_PREFIX}-pear-Horde_Support-[0-9]*:../../wip/pear-Horde_Support
DEPENDS+=	${PHP_PKG_PREFIX}-pear-Horde_Text_Flowed-[0-9]*:../../wip/pear-Horde_Text_Flowed
DEPENDS+=	${PHP_PKG_PREFIX}-pear-Horde_Translation-[0-9]*:../../wip/pear-Horde_Translation
DEPENDS+=	${PHP_PKG_PREFIX}-pear-Horde_Util-[0-9]*:../../wip/pear-Horde_Util

.include "../../lang/php/pear.mk"
.include "../../mk/bsd.pkg.mk"
