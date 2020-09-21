#!/bin/bash

source modules/interactive/calc.sh
source modules/interactive/search.sh
source modules/interactive/strlen.sh
source modules/interactive/log.sh
source modules/interactive/exit.sh

function menu(){
    echo -e "\033[1;34m Menu: \033[0m";
    echo "* c\calc";
    echo "* s\search";
    echo "* st\strlen";
    echo "* l\log";
    echo "* e\exit";
    echo "* h\help";

    printf "INPUT: "

    read action;

    menu_case $action;
}

function menu_case(){
    case "$1" in
        calc | c)
            calc_;
            ;;
        search | s)
            search_
            ;;
        strlen | st)
            strlen_
            ;;
        log | l)
            log_
            ;;
        exit | e)
            exit__
            ;;
        help | h)
            help
            ;;
        *)
            err "Command not found";
            ;;
    esac
    menu;
}

function interactive(){
    menu
}