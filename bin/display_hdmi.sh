#!/usr/bin/env bash
PRIMARY=eDP-1
SECONDARY=HDMI-1
xrandr --output $SECONDARY --mode 1920x1080 --primary --output $PRIMARY --mode 1920x1080
/home/chrmod/bin/wallpaper.sh
