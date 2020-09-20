#!/bin/bash

source app/util.sh
source app/error.sh

function search(){

    local regex="$2";

    for i in $(ls $1);
    do
        ! dir_exist $1${i} && search $1${i}/

        ! file_exist $1${i} && 
		cat $1${i} | grep "(^-?([1-9][0-9]*|0)$)";
    done

    # for i in $(ls $1 -p | grep /);
    # do
    #     echo ${i};
    # done
}
