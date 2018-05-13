#!/usr/bin/env bash
PRIMARY=eDP-1
SECONDARY=DP-1-1
xrandr --output $PRIMARY --mode 2560x1440 --primary --output $SECONDARY --off
/home/chrmod/bin/wallpaper.sh
