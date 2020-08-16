#!/bin/bash
set -e

go get -u github.com/justjanne/powerline-go

# GOPATH=$HOME/go
# function _update_ps1() {
#     PS1="$($GOPATH/bin/powerline-go -error $?)"
# }
# if [ "$TERM" != "linux" ] && [ -f "$GOPATH/bin/powerline-go" ]; then
#     PROMPT_COMMAND="_update_ps1; $PROMPT_COMMAND"
# fi