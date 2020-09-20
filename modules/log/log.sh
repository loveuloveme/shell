#!/bin/bash

function warning(){
	echo keke;	
}

function information(){
	echo hehe;

	grep "(II)" $1;
}

function log(){
	local YELLOW="\033[1;33m"
	local BLUE="\033[1;34m"
	local RESET="\033[0m"

	echo -e $YELLOW;
	cat /var/log/anaconda/X.log | grep "(II)";

	echo -e $BLUE;
	cat /var/log/anaconda/X.log | grep "(WW)";

	echo -e $RESET;
}
