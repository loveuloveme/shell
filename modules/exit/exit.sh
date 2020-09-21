#!/bin/bash

function exit_(){
    ! int $1 && exit $1 || err "Code must be INT"
}