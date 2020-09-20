function int(){
    [[ "$1" =~ (^-?([1-9][0-9]*|0)$) ]] && return 1 || return 0;
}

function file_exist(){
    [ -f "$1" ] && return 1 || return 0;
}

function dir_exist(){
    [ -d "$1" ] && return 1 || return 0;
}