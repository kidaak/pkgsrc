$NetBSD: patch-ext_standard_var__unserializer.c,v 1.1 2014/10/23 16:18:47 taca Exp $

* Fix for CVE-2014-3669.

--- ext/standard/var_unserializer.c.orig	2014-08-13 19:27:30.000000000 +0000
+++ ext/standard/var_unserializer.c
@@ -333,7 +333,7 @@ static inline int object_custom(UNSERIAL
 
 	(*p) += 2;
 
-	if (datalen < 0 || (*p) + datalen >= max) {
+	if (datalen < 0 || (max - (*p)) <= datalen) {
 		zend_error(E_WARNING, "Insufficient data for unserializing - %ld required, %ld present", datalen, (long)(max - (*p)));
 		return 0;
 	}
