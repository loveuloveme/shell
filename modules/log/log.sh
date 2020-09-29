#!/bin/bash

function log(){
    local YELLOW="\033[1;33m"
    local BLUE="\e[1;34m"
    local RESET="\e[0m"
    
    file_exist "/var/log/anaconda/X.log" && err "Log file not found" 10 && return;

    cat /var/log/anaconda/X.log | grep "^\[" | grep "(II)" | sed -E "/\(II\)/s//$(printf "$BLUE(Information)$RESET")/";
    cat /var/log/anaconda/X.log | grep "^\[" | grep "(II)" | sed -E "/\(II\)/s//$(printf "$BLUE(Information)$RESET")/";cat /var/log/anaconda/X.log | grep "^\[" | grep "(II)" | sed -E "/\(II\)/s//$(printf "$YELLOW(Warning)$RESET")/";

}
