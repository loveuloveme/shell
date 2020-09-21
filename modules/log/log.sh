#!/bin/bash

function log(){
	local YELLOW="\033[1;33m"
	local BLUE="\033[1;34m"
	local RESET="\033[0m"
    
    file_exist "/var/log/anaconda/X.log" && err "Log file not found" 10;

	cat /var/log/anaconda/X.log | grep "(II)" | sed -E "/(II)/s//$(printf "$BLUE Information $RESET")/";
    cat /var/log/anaconda/X.log | grep "(WW)" | sed -E "/(WW)/s//$(printf "$YELLOW Warning $RESET")/";
}
