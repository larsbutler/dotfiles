#!/bin/bash
source .ps1_colors
# If __git_ps1 is defined, then customize the prompt and include git status.
# Else, stub it out with empty contents.
if [ -n `command -v __git_ps1` ]; then
    GIT_PS1='\[\033[1;33m\]`__git_ps1`'
else
    GIT_PS1=''
fi
export PS1="$WHITE\u$PURPLE@$CYAN\h: $LIGHT_GREEN\w $GIT_PS1 $LIGHT_GRAY\\$ "
