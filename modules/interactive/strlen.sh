#!/bin/bash

function strlen_(){
    echo -e "\033[1;31m\nSTRLEN:\033[0m";
    printf  "\033[1;34mString: \033[0m";
    read str;

    strlen "$str";
}
