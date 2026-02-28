#!/bin/sh
export DESKTOP_SESSION=sxwm
export XDG_CURRENT_DESKTOP=sxwm
setxkbmap -layout us,ru -option grp:caps_toggle
feh --bg-center ~/Pictures/wallpapers/mountain.png
gentoo-pipewire-launcher restart &
exec dbus-launch --exit-with-session sxwm
