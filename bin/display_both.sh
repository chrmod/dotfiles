#!/usr/bin/env bash

PRIMARY=eDP1
SECONDARY=DP1
RESOLUTION_PRIMARY=1920x1080
RESOLUTION_SECONDARY=2560x1440

# First arguments is a name of secondary display
if [ $1 ]; then
  SECONDARY=$1
fi

xrandr --output $PRIMARY   --mode $RESOLUTION_PRIMARY --primary \
       --output $SECONDARY --mode $RESOLUTION_SECONDARY --above $PRIMARY
