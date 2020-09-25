#!/bin/bash

source modules/calc/arithmetic.sh

function calc(){
    int $2 && err "First argument must be INT" 16;
    int $3 && err "Second argument must be INT" 16;
    
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
            err "Action not found" 1
    esac
}
