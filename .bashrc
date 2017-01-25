source /etc/skel/.bashrc

# avoid duplicates..
export HISTCONTROL=ignoredups:erasedups

# append history entries..
shopt -s histappend

function find_git_branch {
  git_branch=$(git branch 2>/dev/null | grep ^* | cut -d' ' -f 2)
}

function find_git_dirty {
  git_dirty=$([[ `gst 2>/dev/null | wc -l` -gt '1' ]] && echo '* ')
}

# After each command, save and reload history
PROMPT_COMMAND="history -a; history -c; history -r; find_git_branch; find_git_dirty; $PROMPT_COMMAND"

# ANSI color codes
RS="\[\033[0m\]"    # reset
HC="\[\033[1m\]"    # hicolor
UL="\[\033[4m\]"    # underline
#bold=$(tput bold)
INV="\[\033[7m\]"   # inverse background and foreground
FBLK="\[\033[30m\]" # foreground black
FRED="\[\033[31m\]" # foreground red
FGRN="\[\033[32m\]" # foreground green
FYEL="\[\033[33m\]" # foreground yellow
FBLE="\[\033[34m\]" # foreground blue
FMAG="\[\033[35m\]" # foreground magenta
FCYN="\[\033[36m\]" # foreground cyan
FWHT="\[\033[37m\]" # foreground white
BBLK="\[\033[40m\]" # background black
BRED="\[\033[41m\]" # background red
BGRN="\[\033[42m\]" # background green
BYEL="\[\033[43m\]" # background yellow
BBLE="\[\033[44m\]" # background blue
BMAG="\[\033[45m\]" # background magenta
BCYN="\[\033[46m\]" # background cyan
BWHT="\[\033[47m\]" # background white
FG="\[\033[15m\]"
BG1="\[\033[48;5;237m\]"
BYEL2="\[\033[48;5;214m\]"
FBG="\[\033[38;5;235m\]"

PS1="$BYEL2$FBG$HC[${debian_chroot:+($debian_chroot)}\u@\h]$RS $bold$FBLE\w $RS\$git_branch$FRED\$git_dirty$RS\$ "

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# turn off CTRL+s
stty stop undef

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM


# pip bash completion start
_pip_completion()
{
    COMPREPLY=( $( COMP_WORDS="${COMP_WORDS[*]}" \
                   COMP_CWORD=$COMP_CWORD \
                   PIP_AUTO_COMPLETE=1 $1 ) )
}
complete -o default -F _pip_completion pip
# pip bash completion end

export WORKON_HOME=/home/chrmod/.virtualenvs

[[ -s /usr/local/bin/virtualenvwrapper.sh ]] && source /usr/local/bin/virtualenvwrapper.sh
export PIP_VIRTUALENV_BASE=/home/chrmod/.virtualenvs

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:~/.local/bin:~/bin:$PATH"

#turn off capslock
setxkbmap -option ctrl:nocaps


[[ -f ~/bin/gruvbox.sh ]] && source ~/bin/gruvbox.sh

# Fix pinentry-ncurses
GPG_TTY=$(tty)
export GPG_TTY
