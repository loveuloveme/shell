#!/bin/bash

function err(){
    >&2 echo "Error: $1";

    [[ $interact -eq 0 ]] && exit $2;
}