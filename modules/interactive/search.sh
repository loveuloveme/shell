#!/bin/bash

function search_(){
    echo -e "\033[1;31m SEARCH: \033[0m";
    printf  "\033[1;34m Path: \033[0m";
    read path;
    printf  "\033[1;34m Regexp: \033[0m";
    read regex;

    search $path $regex;
}