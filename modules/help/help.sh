#!/bin/bash

function help(){
    local RESET="\033[0m"

    echo -e "\033[1;34mCOMMANDS:$RESET";
    echo -e "\033[1m1.$RESET \033[1;31mcalc$RESET \033[1;30mdiv/sub/mul/sum arg1 arg2$RESET";
    echo -e "\033[1m2.$RESET \033[1;31msearch$RESET \033[1;30mpath$RESET";
    echo -e "\033[1m3.$RESET \033[1;31mreverse$RESET \033[1;30m{in filename} {out filename}$RESET";
    echo -e "\033[1m4.$RESET \033[1;31mstrlen$RESET \033[1;30mstring$RESET";
    echo -e "\033[1m5.$RESET \033[1;31mlog$RESET";
    echo -e "\033[1m6.$RESET \033[1;31mexit$RESET \033[1;30m[code]$RESET";
    echo -e "\033[1m7.$RESET \033[1;31mhelp$RESET";
    echo -e "\033[1m8.$RESET \033[1;31minteractive$RESET";
    echo -e "\n\033[1;34mEXIT CODES:$RESET"
    echo -e "\033[1;31m1$RESET - команда не найдена";
    echo -e "\033[1;31m10$RESET - файл не найден";
    echo -e "\033[1;31m11$RESET - приложение повреждено";
    echo -e "\033[1;31m12$RESET - файл или директория уже существует";
    echo -e "\033[1;31m15$RESET - файл нельзя прочесть";
    echo -e "\033[1;31m16$RESET - аргументы неверны";
}