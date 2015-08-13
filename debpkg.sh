#!/usr/bin/env bash

sudo apt-get install build-essential linux-headers-amd64 \
	git mercurial bison colordiff silversearcher-ag \
	vim-gtk exuberant-ctags cscope \
	xorg xserver-xorg-input-all xserver-xorg-video-all desktop-base \
	xdg-utils avahi-daemon libnss-mdns anacron eject iw \
	alsa-utils alsa-base \
	iceweasel curl \
	i3 i3blocks rxvt-unicode \
	scrot feh atool ranger mosh highlight p7zip p7zip-full unrar \
	imagemagick libmagickcore-extra \
	smbclient cifs-utils smbnetfs \
	gvfs gvfs-bin gconf2 \
	faenza-icon-theme dmz-cursor-theme \
	fonts-noto fonts-droid

sudo apt-get install --no-install-recommends gpicview slim dbus-x11 \
    lxterminal lxappearance lxrandr lxtask


# open-vm-tools open-vm-tools-dkms
# xscreensaver xscreensaver-gl-extra
# poppler-utils pdftk
# pcmanfm slim

# create ~/.xsessionrc
# 		#!/bin/sh
#		# manually resize vmware window
# 		xrandr --output Virtual1 --mode 1920x1200
#		# vmware daemon to support clipboard
# 		vmware-user-suid-wrapper
#		# reset background
#		xsetroot -solid "#333333"
#		# i3 wm
# 		exec i3

