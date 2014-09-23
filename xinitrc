#! /bin/bash

xset +fp /usr/share/fonts/local
xset fp rehash

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

feh --bg-scale ~/.background.png

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources
setxkbmap -option caps:super

xbindkeys

sxhkd &
urxvt &
exec bspwm
