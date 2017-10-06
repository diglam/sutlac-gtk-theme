#!/bin/sh

./autogen.sh 	--prefix=/usr \
				--enable-parallel \
				--disable-gnome \
				--disable-cinnamon \
				--disable-unity \
				--disable-mate \
				--disable-openbox \
				--with-selection_color=#009688 \
				--with-second_selection_color=#4DB6AC \

make -j8

sudo make uninstall
sudo make install
