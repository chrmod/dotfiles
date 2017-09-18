#!/usr/bin/env bash
#irc.mosh localhost --server=/snap/bin/irc.mosh-server -- /snap/bin/irc.tmux new-session -A -s irc
irc.mosh irc --server=/snap/bin/irc.mosh-server -- tmux new-session -A -s irc
