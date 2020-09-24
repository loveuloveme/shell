#!/bin/bash

function sum(){
    echo $(($1+$2));
}

function sub(){
    echo $(($1-$2));
}

function mul(){
    echo $(($1*$2));
}

function div(){
    [[ $2 -eq 0 ]] && err "Divide by zero" 13 && return;
    echo $(($1/$2));
}