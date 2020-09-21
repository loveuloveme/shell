#!/bin/bash

function strlen_(){
    echo -e "\033[1;31m STRLEN: \033[0m";
    printf  "\033[1;34m String: \033[0m";
    read str;

    strlen $str;
}