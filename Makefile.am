ACLOCAL_AMFLAGS = -I m4

themedir  = $(datadir)/themes
sutlacdir = $(DESTDIR)$(themedir)/sutlac
noktodir  = $(DESTDIR)$(themedir)/sutlac-Nokto
sutlacetadir = $(DESTDIR)$(themedir)/sutlac-Eta
noktoetadir  = $(DESTDIR)$(themedir)/sutlac-Nokto-Eta

SUBDIRS = \
	gtk \
	shell \
	wm \
	extra

EXTRA_DIST = \
	COPYING \
	LICENSE_CC_BY_SA4 \
	README.md

install-data-hook:
	cp -Rv $(EXTRA_DIST) $(sutlacdir)

uninstall-hook:
	test -e $(noktodir) && rm -rfv $(noktodir)
	test -e $(sutlacdir) && rm -rfv $(sutlacdir)
	test -e $(noktetaodir) && rm -rfv $(noktoetadir)
	test -e $(sutlacetadir) && rm -rfv $(sutlacetadir)
