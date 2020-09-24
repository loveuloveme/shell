#!/bin/bash

function exit_(){
    [[ "$1"="" ]] && exit 0;
    
    ! int $1 && exit $1 || err "Code must be INT"
}