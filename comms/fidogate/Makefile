# $NetBSD: Makefile,v 1.69 2014/05/29 23:35:20 wiz Exp $
#

DISTNAME=	fidogate-4.4.10
PKGREVISION=	8
CATEGORIES=	comms
MASTER_SITES=	${MASTER_SITE_SOURCEFORGE:=fidogate/}

MAINTAINER=	pkgsrc-users@NetBSD.org
HOMEPAGE=	http://www.fidogate.org/
COMMENT=	FidoNet (FTN) <-> Internet mail and news gateway

MAKE_JOBS_SAFE=		no

USE_TOOLS+=		gmake makeinfo perl:run yacc
MAKE_ENV+=		DEBUG="${CFLAGS} -Werror"
BUILDLINK_SETENV.CC=	CC="cc ${_STRIPFLAG_CC}"

EGDIR=		${PREFIX}/share/examples/fidogate
CONF_FILES=	${EGDIR}/fidogate.conf ${PKG_SYSCONFDIR}/fidogate/fidogate.conf
RCD_SCRIPTS=	fidogate
RCD_SCRIPT_SRC.fidogate=	${WRKSRC}/scripts/maintenance/rc.fidogate
INFO_FILES=	yes # PLIST

PKG_GROUPS=	news
PKG_USERS=	news:news
PKG_GECOS.news=	Network News
PKG_HOME.news=	/var/spool/news

NO_CONFIGURE=	yes

SUBST_CLASSES+=		paths
SUBST_FILES.paths=	config.make
SUBST_SED.paths=	-e "s,@PREFIX@,"${PREFIX:Q}",g"
SUBST_SED.paths+=	-e "s,@PKG_SYSCONFDIR@,"${PKG_SYSCONFDIR:Q}",g"
SUBST_SED.paths+=	-e "s,@PKGINFODIR@,"${PKGINFODIR:Q}",g"
SUBST_SED.paths+=	-e "s,@PERL@,"${TOOLS_PATH.perl:Q}",g"
SUBST_STAGE.paths=	pre-build

# Too many schar/uchar issues.
BUILDLINK_TRANSFORM+=	rm:-Werror

OWN_DIRS=		${PKG_SYSCONFDIR}/fidogate
INSTALLATION_DIRS+=	${EGDIR}		lib/fidogate		\
			lib/fidogate/bin	share/doc/fidogate	\
			share/fidogate		share/fidogate/sendmail	\
			${PKGINFODIR} \
			share/fidogate/sendmail/mailer share/examples/rc.d

FIDOGATE_SUID_PERMS=	news news 4111
SPECIAL_PERMS+=		${PREFIX}/lib/fidogate/ffx ${FIDOGATE_SUID_PERMS} \
			${PREFIX}/lib/fidogate/ftnmail ${FIDOGATE_SUID_PERMS} \
			${PREFIX}/lib/fidogate/ftnafmail ${FIDOGATE_SUID_PERMS}

post-extract:
	${CP} ${WRKSRC}/examples/orodruin/fidogate.conf \
		${WRKSRC}/fidogate.conf.dist

pre-build:
	${RM} -f ${WRKSRC}/doc/fidogate.info*
	cd ${WRKSRC}/doc && makeinfo fidogate.texi && \
		${TOUCH} fidogate.txt html/fidogate_toc.html
	${PERL5} ${WRKSRC}/subst.pl -t${WRKSRC} ${WRKSRC}/fidogate.conf.dist \
		>${WRKSRC}/fidogate.conf

post-install:
	cd ${WRKSRC}/examples && for f in `${FIND} [m-p]* -type d -print`; do \
		${INSTALL_DATA_DIR} ${DESTDIR}${PREFIX}/share/examples/fidogate/$$f; done
	cd ${WRKSRC}/examples && for f in `${FIND} README [m-p]* -type f -print`; do \
		${INSTALL_DATA} $$f ${DESTDIR}${PREFIX}/share/examples/fidogate/$$f; done
	cd ${WRKSRC}/sendmail/mailer && ${INSTALL_DATA} ffx.m4 ftn.m4 \
		${DESTDIR}${PREFIX}/share/fidogate/sendmail/mailer
	${INSTALL_DATA} ${WRKSRC}/doc/fidogate.txt ${DESTDIR}${PREFIX}/share/doc/fidogate
	${INSTALL_DATA} ${WRKSRC}/fidogate.conf ${DESTDIR}${EGDIR}

.include "../../mk/bsd.pkg.mk"
