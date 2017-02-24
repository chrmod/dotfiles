#!/usr/bin/env bash
PRIMARY=eDP1
SECONDARY=DP1
xrandr --output $PRIMARY --mode 1920x1080 --primary --output $SECONDARY --off
