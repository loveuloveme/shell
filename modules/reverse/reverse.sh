#!/bin/bash

source app/util.sh
source app/error.sh

function reverse(){
    [[ -z "$1" ]] && err "Source filename required" 16 && return;
    [[ -z "$2" ]] && err "Out filename required" 16 && return;

    ! dir_exist $1 && err "Expected file" 10 && return;
    ! dir_exist $2 && err "$2 exist as dir" && return;
    file_exist $1 && err "$1 not exist" 10 && return;
    file_readble $1 && err "$1 can't read" 15 && return;

    ! touch "$2" 2> /dev/null && err "$2 can't write" 15 && return;
    [[ "$1"="$2" ]] && tac $1 | rev > tmp && mv tmp "$2" || tac "$1" | rev > "$2"
}
