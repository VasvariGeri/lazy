#!/bin/bash

init(){
    HISTFILE=$PWD/hist
    history -c
    history -w
    HISTIGNORE="history:hh:hint"
    PROMPT_COMMAND="hh;$PROMPT_COMMAND"
}

hh() {
    history -a
}

hint() {
    curl -s lalyo.sh/hist | tail -1
}

alias r="source $BASH_SOURCE"