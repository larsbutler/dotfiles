#!/bin/bash
source .ps1
source .git-completion.bash
source .git-prompt.sh

alias crypt-send="gpg --encrypt --sign --armor --recipient"
alias crypt-recv="gpg --decrypt --armor"
