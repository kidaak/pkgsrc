# $NetBSD$
#

RSYSLOG_MOD=	libgcrypt
PKGNAME=	${DISTNAME:S/rsyslog/rsyslog-${RSYSLOG_MOD}/}

DEPENDS+=	rsyslog>=${PKGVERSION_NOREV}:../../wip/rsyslog8

.include "../../wip/rsyslog8/Makefile.common"

CONFIGURE_ARGS+=	--enable-libgcrypt

BUILD_DIRS=		compat grammar runtime tools

INSTALLATION_DIRS+=	bin lib/rsyslog ${PKGMANDIR}/man1

do-install:
	${INSTALL_DATA} ${WRKSRC}/runtime/.libs/lmcry_gcry.a    \
		${DESTDIR}${PREFIX}/lib/rsyslog/
	${INSTALL_LIB} ${WRKSRC}/runtime/.libs/lmcry_gcry.so    \
		${DESTDIR}${PREFIX}/lib/rsyslog/
	${INSTALL_LIB} ${WRKSRC}/runtime/.libs/lmcry_gcry.lai   \
		${DESTDIR}${PREFIX}/lib/rsyslog/lmcry_gcry.la
	${INSTALL_PROGRAM} ${WRKSRC}/tools/rscryutil		\
		${DESTDIR}${PREFIX}/bin
	${INSTALL_MAN} ${WRKSRC}/tools/rscryutil.1		\
		${DESTDIR}${PREFIX}/${PKGMANDIR}/man1

.include "../../security/libgcrypt/buildlink3.mk"
.include "../../mk/bsd.pkg.mk"
