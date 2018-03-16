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
  xscreensaver-screensaver-bsod
  xss-lock
)

sudo apt-get install ${packages[@]}
