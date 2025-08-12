#!/bin/sh -e

# Set wallpaper
wallpapers &

# Notificaiton program
dusnt &

# Compositor
#xcompmgr &

# Hide mouse cursor after 3 sec.
unclutter-xfixes -idle 3 -root &

# Start status bar
dwmblocks &

# Start pipewire
gentoo-pipewire-launcher &

# Start the window manager
exec dwm
