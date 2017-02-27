#!/usr/bin/env bash

PRIMARY=eDP1
SECONDARY=DP1
RESOLUTION=1920x1080
RESOLUTION=2560x1440

# First arguments is a name of secondary display
if [ $1 ]; then
  SECONDARY=$1
fi

xrandr --output $PRIMARY   --mode $RESOLUTION --primary \
       --output $SECONDARY --mode $RESOLUTION_2