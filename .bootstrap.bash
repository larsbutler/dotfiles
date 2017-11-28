#!/bin/bash
source .ps1
source .cli_color
source .git-completion.bash
source .git-prompt.sh

alias crypt-send="gpg --encrypt --sign --armor --recipient"
alias crypt-recv="gpg --decrypt --armor"
# colors in diff, grep, and less
# :)
alias diff=colordiff
#export GREP_OPTIONS='--color=always'
export LESS="-RSM~gIsw"
# use vi for command line editing
set -o vi
