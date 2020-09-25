#!/bin/bash

function strlen(){
    [[ -z "$1" ]] && echo 0 && return;

	[[ $interact -eq 1 ]] && echo $(($(expr length "$1") - 2)) && return;
    expr length "$1";
}
