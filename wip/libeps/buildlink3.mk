# $NetBSD$
#

BUILDLINK_TREE+=	libeps

.if !defined(LIBEPS_BUILDLINK3_MK)
LIBEPS_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.libeps+=	libeps>=1.7
BUILDLINK_PKGSRCDIR.libeps?=	../../wip/libeps
.endif	# LIBEPS_BUILDLINK3_MK

BUILDLINK_TREE+=	-libeps