
Debian
====================
This directory contains files used to package lisynetworkd/lisynetwork-qt
for Debian-based Linux systems. If you compile lisynetworkd/lisynetwork-qt yourself, there are some useful files here.

## lisynetwork: URI support ##


lisynetwork-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install lisynetwork-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your lisynetwork-qt binary to `/usr/bin`
and the `../../share/pixmaps/lisynetwork128.png` to `/usr/share/pixmaps`

lisynetwork-qt.protocol (KDE)

