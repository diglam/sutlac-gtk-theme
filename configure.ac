m4_define([sutlac_major_version], [3])
m4_define([sutlac_minor_version], [91])
m4_define([sutlac_micro_version], [2])
m4_define([sutlac_version], [sutlac_major_version.sutlac_minor_version.sutlac_micro_version])
m4_define([sutlac_git_url], [https://github.com/diglam/sutlac-gtk-theme])

AC_INIT(
	[sutlac ],
	[sutlac_version],
	[sutlac_git_url],
	[sutlac-gtk-theme]
)
AC_CONFIG_MACRO_DIR([m4])
AM_INIT_AUTOMAKE([
	-Wno-portability \
	no-dist-gzip \
	dist-xz \
	foreign \
	subdir-objects \
	1.9 \
	tar-ustar
])
AC_PREFIX_DEFAULT(/usr)
AM_SILENT_RULES([yes])

sutlac_OPTION([PARALLEL],  [parallel],  [parallel-build], [disable])
sutlac_OPTION([GTK_NEXT],  [gtk_next],  [Gtk-4.0],        [disable])
sutlac_OPTION([GTK_LEGACY],[gtk_legacy],[Gtk-3.18],       [disable])
sutlac_OPTION([GNOME],     [gnome],     [Gnome-Shell],    [disable])
sutlac_OPTION([CINNAMON],  [cinnamon],  [Cinnamon],       [disable])
sutlac_OPTION([FLASHBACK], [flashback], [Flashback],      [disable])
sutlac_OPTION([UNITY],     [unity],     [Unity],          [disable])
sutlac_OPTION([XFCE],      [xfce],      [XFce],           [disable])
sutlac_OPTION([MATE],      [mate],      [Mate],           [disable])
sutlac_OPTION([OPENBOX],   [openbox],   [Openbox],        [disable])
sutlac_OPTION([CHROME],    [chrome],    [Chrome(ium)],    [disable])
sutlac_OPTION([PLANK],     [plank],     [Plank],          [disable])
sutlac_OPTION([TELEGRAM],  [telegram],  [Telegram],       [disable])

PKG_CHECK_MODULES(GDK_PIXBUF, [gdk-pixbuf-2.0 >= 2.32.2])
PKG_CHECK_MODULES(GLIB,       [glib-2.0 >= 2.48.0])

if test x"$ENABLE_PARALLEL" = xyes; then
	AC_PATH_PROG([PARALLEL], [parallel])
	if test x"$PARALLEL" = x; then
		AC_MSG_ERROR(['parallel' not found.])
	fi
fi

AC_PATH_PROG([SASSC], [sassc])
if test x"$SASSC" = x; then
	AC_MSG_ERROR(['sassc' not found.])
fi

AC_PATH_PROG([INKSCAPE], [inkscape])
if test x"$INKSCAPE" = x; then
	AC_MSG_ERROR(['inkscape' not found.])
fi

AC_PATH_PROG([GLIB_COMPILE_RESOURCES], [glib-compile-resources])
if test x"$GLIB_COMPILE_RESOURCES" = x; then
	AC_MSG_ERROR(['glib-compile-resources' not found.])
fi

if test x"$ENABLE_GNOME" = xyes; then
	AC_PATH_PROG([GNOME_SHELL], [gnome-shell])
	if test x"$GNOME_SHELL" = x; then
		AC_MSG_ERROR(['gnome-shell' not found.])
	fi
	sutlac_GNOME
fi
AM_CONDITIONAL(GNOME_IS_326, [test x"$GNOME_SCSS_VERSION" = x3.26])

sutlac_COLOR_SCHEME

AC_CONFIG_FILES([
	Makefile \
	gtk/Makefile \
	shell/Makefile \
	wm/Makefile \
	extra/Makefile
])
AC_OUTPUT
AC_MSG_RESULT([
        sutlac Gtk+ Theme $VERSION
        ===========================================================

         prefix:                 ${prefix}
         datarootdir:            ${datarootdir}
         target directories:     ${datarootdir}/themes/sutlac
                                 ${datarootdir}/themes/sutlac-Nokto
                                 ${datarootdir}/themes/sutlac-Eta
                                 ${datarootdir}/themes/sutlac-Nokto-Eta

         parallel-build:         $ENABLE_PARALLEL
         parallel:               $PARALLEL

         sassc:                  $SASSC
         inkscape:               $INKSCAPE
         glib-compile-resources: $GLIB_COMPILE_RESOURCES

         selection-color:        $SELECTION (default: $selection_default)
         2nd-selection-color:    $SECOND_SELECTION (default: $second_selection_default)
         accent-color:           $ACCENT (default: $accent_default)
         suggestion-color:       $SUGGESTION (default: $suggestion_default)
         destruction-color:      $DESTRUCTION (default: $destruction_default)

        -----------------------------------------------------------
        | Supported Gtk+ Version
        -----------------------------------------------------------

         Gtk+ 3.18:              $ENABLE_GTK_LEGACY
         Gtk+ 3.20:              always
         Gtk+ 3.22:              always
         Gtk+ 4.0:               $ENABLE_GTK_NEXT

        -----------------------------------------------------------
        | DE and WM Support
        -----------------------------------------------------------

         Budgie-Desktop:         always (>= 10.2.7)
         GNOME:                  $ENABLE_GNOME (SCSS ver. $GNOME_SCSS_VERSION)
         Cinnamon:               $ENABLE_CINNAMON
         GNOME-Flashback:        $ENABLE_FLASHBACK
         Unity:                  $ENABLE_UNITY
         XFce:                   $ENABLE_XFCE
         Mate:                   $ENABLE_MATE
         Openbox:                $ENABLE_OPENBOX

        -----------------------------------------------------------
        | Extra Support
        -----------------------------------------------------------

         GtkSourceView/Gedit:    always
         Chrome(ium):            $ENABLE_CHROME
         Plank:                  $ENABLE_PLANK
         Telegram:               $ENABLE_TELEGRAM

        ===========================================================
                             =>> run 'make' and 'sudo make install'
])
