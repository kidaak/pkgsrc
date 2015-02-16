$NetBSD: patch-mozilla_memory_mozalloc_mozalloc__abort.cpp,v 1.2 2015/02/15 02:11:03 ryoon Exp $

--- mozilla/memory/mozalloc/mozalloc_abort.cpp.orig	2015-02-05 04:39:05.000000000 +0000
+++ mozilla/memory/mozalloc/mozalloc_abort.cpp
@@ -63,7 +63,11 @@ void fillAbortMessage(char (&msg)[N], ui
 // Define abort() here, so that it is used instead of the system abort(). This
 // lets us control the behavior when aborting, in order to get better results
 // on *NIX platforms. See mozalloc_abort for details.
+#if defined(SOLARIS)
+void std::abort(void)
+#else
 void abort(void)
+#endif
 {
 #ifdef MOZ_WIDGET_ANDROID
     char msg[64] = {};
