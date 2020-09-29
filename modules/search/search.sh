#!/bin/bash

source app/util.sh
source app/error.sh

function search(){
    [[ -z "$1" ]] && err "Path required" 16 && return;
    [[ -z "$2" ]] && err "Regex required" 16 && return;
    dir_exist $1 && err "Dir doesn't exist" 16 && return;

    local regex="$2";

    for i in $(ls $1);
    do
        ! dir_exist $1/${i}/ && ! file_readble $1/${i}/ && search $1/${i}/ $2 && continue;

	! file_exist $1/${i} && ! file_readble $1/${i} && grep "$regex" $1/${i};
    done
}
