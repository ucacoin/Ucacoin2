
Debian
====================
This directory contains files used to package ucacoind/ucacoin-qt
for Debian-based Linux systems. If you compile ucacoind/ucacoin-qt yourself, there are some useful files here.

## ucacoin: URI support ##


ucacoin-qt.desktop  (Gnome / Open Desktop)
To install:

	sudo desktop-file-install ucacoin-qt.desktop
	sudo update-desktop-database

If you build yourself, you will either need to modify the paths in
the .desktop file or copy or symlink your ucacoin-qt binary to `/usr/bin`
and the `../../share/pixmaps/ucacoin128.png` to `/usr/share/pixmaps`

ucacoin-qt.protocol (KDE)

