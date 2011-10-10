#!/bin/bash
source ~/env-configs/.shell_colors
export GIT_PS1="$YELLOW`__git_ps1`"
export PS1="$WHITE\u$PURPLE@$CYAN\h: $LIGHT_GREEN\w$GIT_PS1 $LIGHT_GRAY\\$ "
