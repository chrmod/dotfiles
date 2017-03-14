#!/usr/bin/env bash
PRIMARY=eDP1
SECONDARY=DP1
xrandr --output $SECONDARY --mode 2560x1440 --primary --output $PRIMARY --off
/home/chrmod/bin/wallpaper.sh
