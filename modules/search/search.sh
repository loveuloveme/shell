#!/bin/bash

source app/util.sh
source app/error.sh

function search(){

    local regex="$2";

    for i in $(ls $1);
    do
        ! dir_exist $1${i} && search $1${i}/ $2

        ! file_exist $1${i} && ! file_readble $1${i} && grep "$regex" $1${i};
    done
}
