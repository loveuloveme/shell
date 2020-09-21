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
    [[ $2 -eq 0 ]] && err "Деление на 0" 13
    echo $(($1/$2));
}