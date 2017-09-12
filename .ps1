#!/bin/bash
source .ps1_colors
# If __git_ps1 is defined, then customize the prompt and include git status.
# Else, stub it out with empty contents.
if [ -n `command -v __git_ps1` ]; then
    GIT_PS1='\[\033[1;33m\]`__git_ps1`'
else
    GIT_PS1=''
fi


__prompt_command() {
    local EXIT_CODE="$?"
    PS1=""
    PS1="$WHITE\u$PURPLE@$CYAN\h: $LIGHT_GREEN\w $GIT_PS1 $LIGHT_GRAY\n"
    if [ $EXIT_CODE == 0 ]; then
        # Green 0
        PS1+="${GREEN}[0]${LIGHT_GRAY}"
    else
        # Red <whatever the code is>
        PS1+="${RED}[${EXIT_CODE}]${LIGHT_GRAY}"
    fi

    # Finish the prompt:
    PS1+=" $ "

    export PS1=${PS1}
    EXIT_CODE=0
}
export PROMPT_COMMAND="__prompt_command;update_terminal_cwd"
