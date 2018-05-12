#!/usr/bin/env bash

# color picker
# https://kryogenix.org/code/pick/

# neovim plugin manager
# https://github.com/junegunn/vim-plug

# nix
# curl https://nixos.org/nix/install | sh

# TODO
# node version manager
# rustup
# alacritty
# linuxbrew
# libinput-gestures

# linuxbrew packages
# ruby-install
# chruby
# fzf
# ripgrep

# snap packages
# spotify
# slack

packages=(
  awscli
  dex
  hsetroot
  thunar
  httpie
  cmdtest
  kpcli
  htop
  neovim
  i3status
  compton
  libinput-tools
  shutter
  git
  curl
  pavucontrol # audio controls
  rofi
  shutter
  tmux
  net-tools
  openssh-server
  xscreensaver
  xscreensaver-screensaver-bsod
  ubuntu-restricted-extras
  imapfilter
  xss-lock
  mutt
  isync
)

sudo apt-get install ${packages[@]}
