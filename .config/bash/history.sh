#!/usr/bin/env bash

# Avoid duplicates
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=
HISTFILESIZE=

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend

# Save and reload the history after each command finishes
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
