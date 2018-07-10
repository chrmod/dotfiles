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
  cmdtest
  compton
  curl
  dex
  git
  hsetroot
  htop
  httpie
  i3status
  imapfilter
  isync
  jq
  kpcli
  libinput-tools
  mutt
  neovim
  net-tools
  openssh-server
  pavucontrol # audio controls
  rofi
  shutter
  shutter
  thunar
  tmux
  ubuntu-restricted-extras
  xscreensaver
  xscreensaver-screensaver-bsod
  xss-lock
)

sudo apt-get install ${packages[@]}
