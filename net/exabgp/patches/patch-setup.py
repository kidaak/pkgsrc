$NetBSD: patch-setup.py,v 1.2 2013/12/25 14:59:10 pettai Exp $

Fix installation to proper directories

--- setup.py.orig	2013-11-18 14:13:24.000000000 +0000
+++ setup.py
@@ -55,8 +55,8 @@ setup(name='exabgp',
 	scripts=['sbin/exabgp',],
 	download_url='https://github.com/Exa-Networks/exabgp/archive/%s.tar.gz' % version,
 	data_files=[
-		('etc/exabgp',configuration('etc/exabgp')),
-		('/usr/lib/systemd/system',configuration('etc/systemd')),
+		('bin/exabgp',configuration('etc/exabgp')),
+	#	('/usr/lib/systemd/system',configuration('etc/systemd')),
 	],
 	classifiers=[
 		'Development Status :: 5 - Production/Stable',
