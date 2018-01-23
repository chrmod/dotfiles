#!/usr/bin/env bash
[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

# .npmrc credentials
# https://github.com/npm/npm/issues/8223#issuecomment-103748375
export npm_config_userconfig=/home/chrmod/.npmcreds
export npm_config_save_default="~"

export PATH=$PATH:$(yarn global bin)
