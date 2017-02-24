#!/usr/bin/env bash
PRIMARY=eDP1
SECONDARY=DP1
xrandr --output $SECONDARY --mode 2580x1400 --primary --output $PRIMARY --off
