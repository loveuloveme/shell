#!/bin/bash

source modules/calc/calc.sh
source modules/reverse/reverse.sh
source modules/strlen/strlen.sh
source modules/search/search.sh
source modules/exit/exit.sh
source modules/log/log.sh

source app/error.sh


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
		strlen $@;
		;;
	log)
		log
		;;
	exit)
	    [[ $# -ne 2 ]] && err "1 parameters expected"
       	exit_ $2;
		;;
	help)
		;;
	*)
		err "Command not found"
		exit 1	
esac
