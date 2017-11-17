#!/usr/bin/env bash

packages=(
  i3-wm
  neovim
  pavucontrol # audio controls
  rofi
  tmux
  tmuxp
  xss-lock
  xscreensaver
)

sudo apt-get install ${packages[@]}
