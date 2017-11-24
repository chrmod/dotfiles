#!/usr/bin/env bash

packages=(
  i3-wm
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
