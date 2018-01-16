#!/usr/bin/env bash

# color picker
# https://kryogenix.org/code/pick/

packages=(
  i3-wm
  dex
  kpcli
  neovim
  pavucontrol # audio controls
  rofi
  tmux
  tmuxp
  xscreensaver
  xss-lock
)

sudo apt-get install ${packages[@]}
