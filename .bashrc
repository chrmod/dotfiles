source /etc/skel/.bashrc

function git_branch {
  git branch 2>/dev/null | grep ^*
}

function git_dirty {
  [[ `gst 2>/dev/null | wc -l` -gt '1' ]] && echo ' *'
}

PS1='${debian_chroot:+($debian_chroot)}\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;34m\]\w\[\033[32m\]`git_branch``git_dirty`\[\033[00m\]\$ '

source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# turn off CTRL+s
stty stop undef

[[ -s $HOME/.nvm/nvm.sh ]] && . $HOME/.nvm/nvm.sh # This loads NVM

