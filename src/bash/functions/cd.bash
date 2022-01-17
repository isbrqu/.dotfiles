prev_cd() {
    if [[ -n $1 ]];then
        local -i n=$1
        for ((i=1; i<=n; i++));do
            cd ..
        done
    else
        cd ..
    fi
}

