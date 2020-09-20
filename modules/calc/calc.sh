#!/bin/bash

source modules/calc/arithmetic.sh
source app/util.sh
source app/error.sh

function calc(){
    
    int $1 && err "First argument must be INT";
    int $2 && err "Second argument must be INT";
    
    case "$1" in
        sum)
            sum $2 $3;
            ;;
        sub)
            sub $2 $3;
            ;;
        mul)
            mul $2 $3;
            ;;
        div)
            div $2 $3;
            ;;
        *)
            echo "WWWWWWRRRRROONG"
            exit 1	
    esac
}