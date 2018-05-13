#!/usr/bin/env bash
PRIMARY=eDP-1
SECONDARY=DP-1-1
xrandr --output $SECONDARY --mode 2560x1440 --primary --output $PRIMARY --off
/home/chrmod/bin/wallpaper.sh
