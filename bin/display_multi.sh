#!/usr/bin/env bash
PRIMARY=eDP-1
SECONDARY=DP-1-1
THIRD=DP-1-2
xrandr --output $SECONDARY --mode 2560x1440 --primary \
  --output $THIRD --mode 2560x1440 --left-of $SECONDARY \
  --output $PRIMARY --mode 2560x1440 --right-of $SECONDARY
/home/chrmod/bin/wallpaper.sh
