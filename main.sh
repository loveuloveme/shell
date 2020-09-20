#!/bin/bash

source modules/calc/calc.sh
source modules/reverse/reverse.sh
source modules/strlen/strlen.sh
source app/error.sh


case "$1" in
	calc)
		[[ $# -ne 4 ]] && err "3 parameters expected"
        calc $2 $3 $4
		;;
	search)
        [[ $# -ne 3 ]] && err "2 parameters expected"
		;;
	reverse)
        [[ $# -ne 3 ]] && err "2 parameters expected"
        reverse $2 $3
		;;
	strlen)
        strlen $2;
		;;
	log)
		;;
	exit)
        exit $2;
		;;
	help)
		;;
	*)
		err "Nit etogo"
		exit 1	
esac
