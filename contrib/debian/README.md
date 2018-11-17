
Debian
====================
This directory contains files used to package bluemnd/bluemn-qt
for Debian-based Linux systems. If you compile bluemnd/bluemn-qt yourself, there are some useful files here.

## bluemn: URI support ##


bluemn-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install bluemn-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your bluemn-qt binary to `/usr/bin`
and the `../../share/pixmaps/bluemn128.png` to `/usr/share/pixmaps`

bluemn-qt.protocol (KDE)

