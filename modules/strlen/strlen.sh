source app/error.sh

function strlen(){
    local prt=$@;
    local count=${#prt};

    [[ count -le 6 ]] && err "String not found.";
    
    echo $(($count - 7));
}