#!/bin/bash

function exit__(){
    echo -e "\033[1;31m\nEXIT:\033[0m";
    printf  "\033[1;34mCode: \033[0m";

    read code;

    exit $code;
}