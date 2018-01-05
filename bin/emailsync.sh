#!/usr/bin/env bash

function emailsync() {
  mbsync -c "$HOME"/.config/isync/mbsyncrc $1 && echo "synced and wait 60s" && sleep 60 && emailsync $1;
}

emailsync $1
