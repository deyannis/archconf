#!/bin/sh
#
# ~/.xinitrc
#
# Executed by startx (run your window manager from here)

# dbus magic
if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

# NumLock On
exec numlockx &

# Dropox
exec dropboxd &

# GR - EN shift
exec setxkbmap -option "grp:switch,grp:alt_shift_toggle,grp_led:scroll" -layout "us,gr"  &

# Multimedia keys
exec xbindkeys &

# i3 WM
exec i3


# exec gnome-session
# exec startkde
# exec startxfce4
# ...or the Window Manager of your choice
