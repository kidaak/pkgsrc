# $NetBSD$

BUILDLINK_TREE+=	vale

.if !defined(VALE_BUILDLINK3_MK)
VALE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.vale+=	vale>=0.0.2
BUILDLINK_PKGSRCDIR.vale?=	../../wip/vale-current
.endif # VALE_BUILDLINK3_MK

BUILDLINK_TREE+=	-vale