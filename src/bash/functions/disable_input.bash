disable_inputs() {
    declare name="ILITEK ILITEK Multi-Touch"
    declare state
    state="$(IFS=$'\n'; arr=($(xinput list-props "$name")); echo "${arr[1]}")"
    if [[ "$state" = *1 ]];then
        xinput disable "$name"
    fi
}

