#!/bin/bash

function reverse_(){
    echo -e "\033[1;31m\nREVERSE:\033[0m";
    printf  "\033[1;34mSource File: \033[0m";
    read file;
    printf  "\033[1;34mFilename: \033[0m";
    read file_;
    reverse $file $file_;
}