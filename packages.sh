#!/usr/bin/env bash

# color picker
# https://kryogenix.org/code/pick/

packages=(
  awscli
  i3-wm
  dex
  kpcli
  hsetroot
  neovim
  pavucontrol # audio controls
  rofi
  shutter
  tmux
  xscreensaver
  xss-lock
)

sudo apt-get install ${packages[@]}
