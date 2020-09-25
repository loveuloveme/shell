#!/bin/bash

function strlen(){
    [[ -z "$1" ]] && echo 0 && return;

    expr length "$1";
}
