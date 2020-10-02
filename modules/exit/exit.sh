#!/bin/bash

function exit_(){
    [[ -z "$1" ]] && exit 0;
    int $1 && err "Code must be INT" 1 && return;
    exit $1;
}
