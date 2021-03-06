$NetBSD: patch-jdk_src_share_native_sun_awt_image_jpeg_jpegdecoder.c,v 1.1 2015/02/08 08:41:25 tnn Exp $

Ensure we use the bundled jpeg.

--- jdk/src/share/native/sun/awt/image/jpeg/jpegdecoder.c.orig	2015-02-02 15:37:11.000000000 +0000
+++ jdk/src/share/native/sun/awt/image/jpeg/jpegdecoder.c
@@ -44,7 +44,7 @@
 /* undo "system_boolean" hack and undef FAR since we don't use it anyway */
 #undef boolean
 #undef FAR
-#include <jpeglib.h>
+#include "jpeglib.h"
 #include "jerror.h"
 
 /* The method IDs we cache. Note that the last two belongs to the
