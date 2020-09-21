#!/bin/bash

function app_corrupted(){
    >&2 echo "Error: app is corrupted";

    exit 1;
}

[ -f "modules/calc/calc.sh" ] || app_corrupted;
[ -f "modules/reverse/reverse.sh" ] || app_corrupted;
[ -f "modules/strlen/strlen.sh" ] || app_corrupted;
[ -f "modules/search/search.sh" ] || app_corrupted;
[ -f "modules/exit/exit.sh" ] || app_corrupted;
[ -f "modules/log/log.sh" ] || app_corrupted;
[ -f "modules/interactive/interactive.sh" ] || app_corrupted;
[ -f "modules/interactive/calc.sh" ] || app_corrupted;
[ -f "modules/interactive/exit.sh" ] || app_corrupted;
[ -f "modules/interactive/search.sh" ] || app_corrupted;
[ -f "modules/interactive/strlen.sh" ] || app_corrupted;
[ -f "app/error.sh" ] || app_corrupted;
[ -f "app/util.sh" ] || app_corrupted;

interact=0;

source modules/calc/calc.sh
source modules/reverse/reverse.sh
source modules/strlen/strlen.sh
source modules/search/search.sh
source modules/exit/exit.sh
source modules/log/log.sh
source modules/help/help.sh

source modules/interactive/interactive.sh

source app/error.sh
source app/util.sh

case "$1" in
	calc)
		[[ $# -ne 4 ]] && err "3 parameters expected";
		calc $2 $3 $4;
		;;
	search)
		[[ $# -ne 3 ]] && err "2 parameters expected";
		search $2 $3;
		;;
	reverse)
		[[ $# -ne 3 ]] && err "2 parameters expected"
		reverse $2 $3;
		;;
	strlen)
		strlen ${@:2};
		;;
	log)
		log
		;;
	exit)
	    [[ $# -ne 2 ]] && err "1 parameters expected"
       	exit_ $2;
		;;
	help)
        help
		;;
    interactive)
        interact=1;
        interactive
		;;
	*)
		err "Command not found"
		exit 1	
esac
