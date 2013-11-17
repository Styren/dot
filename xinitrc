#!usr/bin/bash

xset +fp /usr/share/fonts/local
xset fp rehash

if [ -d /etc/X11/xinit/xinitrc.d ]; then
  for f in /etc/X11/xinit/xinitrc.d/*; do
    [ -x "$f" ] && . "$f"
  done
  unset f
fi

[[ -f ~/.Xmodmap ]] && xmodmap ~/.Xmodmap

[[ -f ~/.Xresources ]] && xrdb -merge ~/.Xresources

# exec feh --bg-scale ~/.background.png

exec i3 -V >> ~/.i3/i3log 2>&1
