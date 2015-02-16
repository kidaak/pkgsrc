# $NetBSD: options.mk,v 1.1 2014/08/03 22:07:39 wiz Exp $
#

PKG_OPTIONS_VAR=	PKG_OPTIONS.webkit-gtk
PKG_SUPPORTED_OPTIONS=	webkit-jit debug
PKG_SUGGESTED_OPTIONS=

.include "../../mk/bsd.prefs.mk"

# XXX JIT produces invalid code on NetBSD/i386
.if empty(MACHINE_PLATFORM:MNetBSD-*-i386) && empty(MACHINE_PLATFORM:MNetBSD-*-x86_64)
PKG_SUGGESTED_OPTIONS+= webkit-jit
.endif

.include "../../mk/bsd.options.mk"

.if !empty(PKG_OPTIONS:Mwebkit-jit)
CONFIGURE_ARGS+=	--enable-jit
.else
CONFIGURE_ARGS+=	--disable-jit
.endif

.if !empty(PKG_OPTIONS:Mdebug)
CONFIGURE_ARGS+=	--enable-debug
.else
CONFIGURE_ARGS+=	--disable-debug
.endif
