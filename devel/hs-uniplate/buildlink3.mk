# $NetBSD: buildlink3.mk,v 1.5 2014/12/12 22:55:24 szptvlfn Exp $

BUILDLINK_TREE+=	hs-uniplate

.if !defined(HS_UNIPLATE_BUILDLINK3_MK)
HS_UNIPLATE_BUILDLINK3_MK:=

BUILDLINK_API_DEPENDS.hs-uniplate+=	hs-uniplate>=1.6.12
BUILDLINK_ABI_DEPENDS.hs-uniplate+=	hs-uniplate>=1.6.12nb4
BUILDLINK_PKGSRCDIR.hs-uniplate?=	../../devel/hs-uniplate

.include "../../devel/hs-hashable/buildlink3.mk"
.include "../../devel/hs-syb/buildlink3.mk"
.include "../../devel/hs-unordered-containers/buildlink3.mk"
.endif	# HS_UNIPLATE_BUILDLINK3_MK

BUILDLINK_TREE+=	-hs-uniplate
