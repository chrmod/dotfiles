#!/usr/bin/env bash

# color picker
# https://kryogenix.org/code/pick/

packages=(
  i3-wm
  dex
  kpcli
  hsetroot
  neovim
  pavucontrol # audio controls
  rofi
  tmux
  xscreensaver
  xss-lock
)

sudo apt-get install ${packages[@]}
