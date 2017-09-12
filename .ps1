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
    PROMPT="$WHITE\u$PURPLE@$CYAN\h: $LIGHT_GREEN\w$GIT_PS1 $LIGHT_GRAY\n"
    if [ $EXIT_CODE == 0 ]; then
        # Green 0
        PROMPT+="${GREEN}[0]${LIGHT_GRAY}"
    else
        # Red <whatever the code is>
        PROMPT+="${RED}[${EXIT_CODE}]${LIGHT_GRAY}"
    fi

    # Finish the prompt:
    PROMPT+=" $ "

    # Add virtual env prefix:
    if [ -z ${VIRTUAL_ENV+x} ]
    then
        VENV_PREFIX=""
    else
        PY_VERSION="$(python -c 'import platform; print(platform.python_version())')"
        VENV_PREFIX="(${LIGHT_BLUE}$(basename "$VIRTUAL_ENV")${LIGHT_GRAY}/${PURPLE}py${PY_VERSION}${LIGHT_BLUE}${LIGHT_GRAY}) "
    fi

    export PS1="${VENV_PREFIX}${PROMPT}"
    EXIT_CODE=0
}
export PROMPT_COMMAND="__prompt_command;update_terminal_cwd"
