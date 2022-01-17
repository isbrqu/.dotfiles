l() {
    if [[ -f "$1" ]];then
        # read a file
        bat "$1" || cat "$1"
    elif [[ -z "$1" ]];then
        # list all file
        ls -1 $LS_OPTS
    else
        # list folder contents
        ls -1 $LS_OPTS "$1"
    fi
}

