#!/bin/bash

function help(){
    file_exist "help.txt" && err "Help.txt not found" 10;
    cat help.txt;
    echo ' ';
}