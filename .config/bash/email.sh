#!/usr/bin/env bash
function emailsync() {
  mbsync $1 && echo "synced and wait 60s" && sleep 60 && emailsync $1;
}
