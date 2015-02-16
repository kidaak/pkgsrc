$NetBSD: patch-extensions_spellcheck_hunspell_src_mozHunspell.cpp,v 1.7 2015/01/30 15:19:59 ryoon Exp $

Load system hunspell dictionaries.

--- extensions/spellcheck/hunspell/src/mozHunspell.cpp.orig	2015-01-23 06:00:09.000000000 +0000
+++ extensions/spellcheck/hunspell/src/mozHunspell.cpp
@@ -400,6 +400,14 @@ mozHunspell::LoadDictionaryList(bool aNo
     }
   }
 
+  // load system hunspell dictionaries
+  nsCOMPtr<nsIFile> hunDir;
+  NS_NewNativeLocalFile(NS_LITERAL_CSTRING("@PREFIX@/share/hunspell"),
+                        true, getter_AddRefs(hunDir));
+  if (hunDir) {
+      LoadDictionariesFromDir(hunDir);
+  }
+
   // find dictionaries from extensions requiring restart
   nsCOMPtr<nsISimpleEnumerator> dictDirs;
   rv = dirSvc->Get(DICTIONARY_SEARCH_DIRECTORY_LIST,
