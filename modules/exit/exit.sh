#!/bin/bash

source app/util.sh
source app/error.sh

function exit_(){
    ! int $1 && exit $1 || err "Code must be INT"
}