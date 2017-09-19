
source $HOME/.config/bash/skel.sh
source $HOME/.config/bash/scm-prompt.sh
source $HOME/.config/bash/node.sh
source $HOME/.config/bash/python.sh
source $HOME/.config/bash/rust.sh
source $HOME/.config/bash/ruby.sh
source $HOME/.config/bash/heroku.sh
source $HOME/.config/bash/prompt.sh
source $HOME/.config/bash/gruvbox.sh
source $HOME/.config/bash/android.sh
source $HOME/.config/bash/email.sh

# turn off CTRL+s
stty stop undef

# Fix pinentry-ncurses
GPG_TTY=$(tty)
export GPG_TTY

# Avoid duplicates
HISTCONTROL=ignoreboth:erasedups
HISTSIZE=
HISTFILESIZE=

# When the shell exits, append to the history file instead of overwriting it
shopt -s histappend
