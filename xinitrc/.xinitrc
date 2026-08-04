#!/bin/bash

/usr/bin/pipewire &
/usr/bin/pipewire-pulse &
/usr/bin/pipewrie-media-sesion &
#sets up display monitors automatically on startup
xrandr --output DisplayPort-0 --mode 2560x1440 --rate 240.00
xrandr --output DisplayPort-1 --mode 2560x1440 --rate 165.00 --rotate left --left-of DisplayPort-0
xwallpaper --output DisplayPort-1 --zoom ~/Downloads/nature-of-fear-vertical.jpg --output DisplayPort-0 --zoom ~/Downloads/nature-of-fear.jpg
/home/rubedo/.local/bin/keyboard_startup &
# openrgb --profile /home/rubedo/.config/OpenRGB/red-and-white1.orp &
picom &
exec oxwm
