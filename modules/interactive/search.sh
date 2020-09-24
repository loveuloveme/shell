#!/bin/bash

function search_(){
    echo -e "\033[1;31m\nSEARCH:\033[0m";
    printf  "\033[1;34mPath: \033[0m";
    read path;
    printf  "\033[1;34mRegexp: \033[0m";
    read regex;

    search $path $regex;
}