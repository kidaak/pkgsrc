# $NetBSD: buildlink3.mk,v 1.11 2014/12/30 17:23:47 adam Exp $

BUILDLINK_TREE+=	qt5-qtquick1

.if !defined(QT5_QTQUICK1_BUILDLINK3_MK)
QT5_QTQUICK1_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.qt5-qtquick1+=	qt5-qtquick1>=5.4.0
BUILDLINK_ABI_DEPENDS.qt5-qtquick1+=	qt5-qtquick1>=5.4.0
BUILDLINK_PKGSRCDIR.qt5-qtquick1?=	../../x11/qt5-qtquick1

BUILDLINK_INCDIRS.qt5-qtquick1+=	qt5/include
BUILDLINK_LIBDIRS.qt5-qtquick1+=	qt5/lib
BUILDLINK_LIBDIRS.qt5-qtquick1+=	qt5/plugins

.include "../../x11/qt5-qtscript/buildlink3.mk"
.include "../../x11/qt5-qttools/buildlink3.mk"
.include "../../x11/qt5-qtwebkit/buildlink3.mk"
.include "../../x11/qt5-qtxmlpatterns/buildlink3.mk"
.endif	# QT5_QTQUICK1_BUILDLINK3_MK

BUILDLINK_TREE+=	-qt5-qtquick1
