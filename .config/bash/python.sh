#!/usr/bin/env bash

_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

export WORKON_HOME=/home/chrmod/.virtualenvs

[[ -s /home/linuxbrew/.linuxbrew/bin/virtualenvwrapper.sh ]] && source /home/linuxbrew/.linuxbrew/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=/home/chrmod/.virtualenvs
