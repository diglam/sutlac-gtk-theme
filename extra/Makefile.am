themedir     = $(datadir)/themes
sutlacdir    = $(DESTDIR)$(themedir)/sutlac
noktodir     = $(DESTDIR)$(themedir)/sutlac-Nokto
sutlacetadir = $(DESTDIR)$(themedir)/sutlac-Eta
noktoetadir  = $(DESTDIR)$(themedir)/sutlac-Nokto-Eta

chromedir         = $(srcdir)/chrome
chrome_file       = $(chromedir)/sutlac-theme.crx
chrome_nokto_file = $(chromedir)/sutlac-nokto-theme.crx

plankdir   = $(srcdir)/plank
plank_file = $(plankdir)/dock.theme

telegramdir         = $(srcdir)/telegram
telegram_file       = $(telegramdir)/sutlac.tdesktop-theme
telegram_nokto_file = $(telegramdir)/sutlac-nokto.tdesktop-theme

geditdir   = $(srcdir)/gedit
gedit_file = \
	$(geditdir)/sutlac.xml \
	$(geditdir)/README.md

# ******************
# * Generate files *
# ******************

all:

# *****************
# * Install files *
# *****************

install-data-local:
if ENABLE_CHROME
	$(MKDIR_P) $(sutlacdir)/chrome
	$(MKDIR_P) $(noktodir)/chrome
	cp -Rv $(chrome_file) $(sutlacdir)/chrome
	cp -Rv $(chrome_nokto_file) $(noktodir)/chrome

	cd $(sutlacdir)
	ln -sf ../sutlac/chrome $(sutlacetadir)/chrome
	ln -sf ../sutlac-Nokto/chrome $(noktoetadir)/chrome
endif

if ENABLE_PLANK
	$(MKDIR_P) $(sutlacdir)/plank
	cp -Rv $(plank_file) $(sutlacdir)/plank
	cd $(sutlacdir)
	ln -sf ../sutlac/plank $(noktodir)/plank
	ln -sf ../sutlac/plank $(sutlacetadir)/plank
	ln -sf ../sutlac/plank $(noktoetadir)/plank
endif

if ENABLE_TELEGRAM
	$(MKDIR_P) $(sutlacdir)/telegram
	$(MKDIR_P) $(noktodir)/telegram
	cp -Rv $(telegram_file) $(sutlacdir)/telegram
	cp -Rv $(telegram_nokto_file) $(noktodir)/telegram

	cd $(sutlacdir)
	ln -sf ../sutlac/telegram $(sutlacetadir)/telegram
	ln -sf ../sutlac-Nokto/telegram $(noktoetadir)/telegram
endif

	$(MKDIR_P) $(sutlacdir)/gedit
	cp -Rv $(gedit_file) $(sutlacdir)/gedit
	cd $(sutlacdir)
	ln -sf ../sutlac/gedit $(noktodir)/gedit

# *******************
# * Uninstall files *
# *******************

uninstall-local:
if ENABLE_CHROME
	test -e $(noktodir)/chrome && rm -rfv $(noktodir)/chrome
	test -e $(sutlacdir)/chrome && rm -rfv $(sutlacdir)/chrome
	test -e $(noktoetadir)/chrome && rm -rfv $(noktoetadir)/chrome
	test -e $(sutlacetadir)/chrome && rm -rfv $(sutlacetadir)/chrome
endif

if ENABLE_PLANK
	test -e $(noktodir)/plank && rm -rfv $(noktodir)/plank
	test -e $(sutlacdir)/plank && rm -rfv $(sutlacdir)/plank
	test -e $(noktoetadir)/plank && rm -rfv $(noktoetadir)/plank
	test -e $(sutlacetadir)/plank && rm -rfv $(sutlacetadir)/plank
endif

if ENABLE_TELEGRAM
	test -e $(noktodir)/telegram && rm -rfv $(noktodir)/telegram
	test -e $(sutlacdir)/telegram && rm -rfv $(sutlacdir)/telegram
	test -e $(noktoetadir)/telegram && rm -rfv $(noktoetadir)/telegram
	test -e $(sutlacetadir)/telegram && rm -rfv $(sutlacetadir)/telegram
endif

	test -e $(noktodir)/gedit && rm -rfv $(noktodir)/gedit
	test -e $(sutlacdir)/gedit && rm -rfv $(sutlacdir)/gedit

# ****************************
# * Clean up generated files *
# ****************************

CLEANFILES =

DISTCLEANFILES = \
	$(CLEANFILES)
