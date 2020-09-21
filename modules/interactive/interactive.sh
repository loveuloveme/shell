#!/bin/bash

source modules/interactive/calc.sh
source modules/interactive/search.sh
source modules/interactive/strlen.sh
source modules/interactive/log.sh
source modules/interactive/exit.sh

function menu(){
    echo -e "\033[1;34m Menu: \033[0m";

    [ -f "modules/calc/calc.sh" ] && echo "* c\calc";
    [ -f "modules/search/search.sh" ] && echo "* s\search";
    [ -f "modules/strlen/strlen.sh" ] && echo "* st\strlen";
    [ -f "modules/log/log.sh" ] && echo "* l\log";
    [ -f "modules/exit/exit.sh" ] && echo "* e\exit";
    [ -f "modules/help/help.sh" ] && echo "* h\help";

    printf "INPUT: "

    read action;

    menu_case $action;
}

function menu_case(){
    case "$1" in
        calc | c)
            [ -f "modules/calc/calc.sh" ] && calc_;
            ;;
        search | s)
            [ -f "modules/search/search.sh" ] && search_
            ;;
        strlen | st)
            [ -f "modules/strlen/strlen.sh" ] && strlen_
            ;;
        log | l)
            [ -f "modules/log/log.sh" ] && log_
            ;;
        exit | e)
            [ -f "modules/exit/exit.sh" ] && exit__
            ;;
        help | h)
            [ -f "modules/help/help.sh" ] && help
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