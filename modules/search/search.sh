#!/bin/bash

source app/util.sh
source app/error.sh

function search(){

    # for i in $(ls $1 -p | grep -v */);
    # do
    #     search $1/${i};
    # done

    # local regexp="(^((?:(?:[^?+*{}()[\]\\|]+|\\.|\[(?:\^?\\.|\^[^\\]|[^\\^])(?:[^\]\\]+|\\.)*\]|\((?:\?[:=!]|\?<[=!]|\?>)?(?1)??\)|\(\?(?:R|[+-]?\d+)\))(?:(?:[?+*]|\{\d+(?:,\d*)?\})[?+]?)?|\|)*)$)";
    # [[ "x`x`x`x`x" =~ regexp ]] && echo "Cool" || err "Invalid RegEx";

    local regex="$2";

    for i in $(ls $1);
    do
        echo $2;
        ! dir_exist $1${i} && search $1${i}/

        ! file_exist $1${i} && 
            while read -ra line; 
            do
                for word in "${line[@]}";
                do
                    #! int $word && echo $word
                    [[ "$word" =~ regex ]] && echo $word;
                done;
            done < $1${i}
    done

    # for i in $(ls $1 -p | grep /);
    # do
    #     echo ${i};
    # done
}