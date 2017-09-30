#!/usr/bin/env bash

# Avoid duplicates
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=
HISTFILESIZE=

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
