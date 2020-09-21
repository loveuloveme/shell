#!/bin/bash

function exit__(){
    echo -e "\033[1;31m LOG: \033[0m";
    printf  "\033[1;34m Code: \033[0m";
    read code;

    exit $code;
}