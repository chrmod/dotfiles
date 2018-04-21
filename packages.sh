#!/usr/bin/env bash

# color picker
# https://kryogenix.org/code/pick/

packages=(
  awscli
  dex
  hsetroot
  httpie
  i3-wm
  kpcli
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
