#!/bin/env bash

function find_git_dirty {
  git_dirty=$([[ `gst 2>/dev/null | wc -l` -gt '1' ]] && echo '* ')
}

PROMPT_COMMAND="find_git_dirty; $PROMPT_COMMAND"
