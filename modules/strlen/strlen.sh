#!/bin/bash

function strlen(){
    local prt=$@;
    local count=${#prt};

    echo $count;
}