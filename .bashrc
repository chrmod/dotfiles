export EDITOR=vim
export TERMINAL=rxvt

# set PATH so it includes user's private bin if it exists
if [ -d "$HOME/bin" ] ; then
    PATH="$HOME/bin:$PATH"
fi

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
source $HOME/.config/bash/history.sh
source $HOME/.config/bash/nix.sh

if [ -z "$PS1" ]; then
  # turn off CTRL+s
  stty stop undef
fi

# Fix pinentry-ncurses
GPG_TTY=$(tty)
export GPG_TTY
