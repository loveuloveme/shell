#!/bin/bash

source app/util.sh
source app/error.sh

function reverse(){
    [[ -z "$1" ]] && err "Source filename required" 16 && return;
    [[ -z "$2" ]] && err "Out filename required" 16 && return;

    file_exist $1 && err "$1 not exist" 10;
    ! file_exist $2 && err "$2 already exist" 12;
    file_readble $1 && err "$1 can't read" 15;

    tac $1 | rev > $2
}