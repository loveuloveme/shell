#!/bin/bash

function reverse_(){
    echo -e "\033[1;31m REVERSE: \033[0m";
    printf  "\033[1;34m Source File: \033[0m";
    read file;
    printf  "\033[1;34m Filename: \033[0m";
    read file_;
    reverse $file $file_;
}