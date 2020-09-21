#!/bin/bash

source app/util.sh
source app/error.sh

function reverse(){
    file_exist $1 && err "$1 not exist" 10
    ! file_exist $2 && err "$2 already exist" 12

    cat $1 | rev > $2
}