Description: Adds hardening to basic makefile
Author: Francesco Paolo Lovergine <frankie@debian.org>
Forwarded: not-needed

Index: gpw-0.0.19940601/Makefile.Debian
===================================================================
--- gpw-0.0.19940601.orig/Makefile.Debian
+++ gpw-0.0.19940601/Makefile.Debian
@@ -1,8 +1,11 @@
 # Makefile for password generator under Debian GNU/Linux
 #
 
+DPKG_EXPORT_BUILDFLAGS = 1
+include /usr/share/dpkg/buildflags.mk
+
 DEBUGARGS = -g 
-COMPILER = gcc -Wall -O2
+COMPILER = $(CC) $(CPPFLAGS) $(CFLAGS) $(LDFLAGS)
 
 # Edited for Debian GNU/Linux
 DESTDIR=
