#!/bin/bash


#Определение целостности приложения
function app_corrupted(){
    >&2 echo "Error: app is corrupted";

    exit 11;
}

[ -f "app/error.sh" ] || app_corrupted;
[ -f "app/util.sh" ] || app_corrupted;

interact=0;

source modules/interactive/interactive.sh

source app/error.sh
source app/util.sh

[[ $# -eq 0 ]] && err "No arguments";

case "$1" in
	calc)
        [ -f "modules/calc/calc.sh" ] || app_corrupted;
        source modules/calc/calc.sh
		[[ $# -ne 4 ]] && err "3 parameters expected";
		calc $2 $3 $4;
		;;
	search)
        [ -f "modules/search/search.sh" ] || app_corrupted;
        source modules/search/search.sh
		[[ $# -ne 3 ]] && err "2 parameters expected";
		search $2 $3;
		;;
	reverse)
        [ -f "modules/reverse/reverse.sh" ] || app_corrupted;
        source modules/reverse/reverse.sh
		[[ $# -ne 3 ]] && err "2 parameters expected"
		reverse $2 $3;
		;;
	strlen)
        [ -f "modules/strlen/strlen.sh" ] || app_corrupted;
        [[ $# -ne 2 ]] && err "1 parameters expected"
        source modules/strlen/strlen.sh
		strlen ${@:2};
		;;
	log)
        [ -f "modules/log/log.sh" ] || app_corrupted;
        source modules/log/log.sh
		log
		;;
	exit)
        [ -f "modules/exit/exit.sh" ] || app_corrupted;
        source modules/exit/exit.sh
       	exit_ $2;
		;;
	help)
        [ -f "modules/help/help.sh" ] || app_corrupted;
        source modules/help/help.sh
        help
		;;
    interactive)
        [ -f "modules/interactive/interactive.sh" ] || app_corrupted;
        [ -f "modules/interactive/calc.sh" ] || app_corrupted;
        [ -f "modules/interactive/exit.sh" ] || app_corrupted;
        [ -f "modules/interactive/search.sh" ] || app_corrupted;
        [ -f "modules/interactive/strlen.sh" ] || app_corrupted;
        interact=1;
        interactive
		;;
	*)
		err "Command not found" 1
esac
