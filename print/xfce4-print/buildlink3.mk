# $NetBSD: buildlink3.mk,v 1.52 2014/06/18 09:26:11 wiz Exp $

BUILDLINK_TREE+=	xfce4-print

.if !defined(XFCE4_PRINT_BUILDLINK3_MK)
XFCE4_PRINT_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.xfce4-print+=	xfce4-print>=4.6.0
BUILDLINK_ABI_DEPENDS.xfce4-print+=	xfce4-print>=4.6.1nb24
BUILDLINK_PKGSRCDIR.xfce4-print?=	../../print/xfce4-print

.include "../../devel/glib2/buildlink3.mk"
.include "../../x11/libxfce4gui/buildlink3.mk"
.include "../../x11/libxfce4util/buildlink3.mk"

pkgbase := xfce4-print
.include "../../mk/pkg-build-options.mk"

.if !empty(PKG_BUILD_OPTIONS.xfce4-print:Mcups)
.  include "../../print/cups15/buildlink3.mk"
.endif
.endif # XFCE4_PRINT_BUILDLINK3_MK

BUILDLINK_TREE+=	-xfce4-print
