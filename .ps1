#!/bin/bash
source .shell_colors
GIT_PS1='\[\033[1;33m\]`__git_ps1`'
export PS1="$WHITE\u$PURPLE@$CYAN\h: $LIGHT_GREEN\w$GIT_PS1 $LIGHT_GRAY\\$ "
