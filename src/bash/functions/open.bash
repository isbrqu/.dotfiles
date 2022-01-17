_open() {
    local file="$1"
    xdg-open "$file" &> /dev/null &
    (( $? == 0 )) && disown
}

open() {
    local file="$1"
    if [[ -n "$file" ]];then
        _open "$file"
    else
        file="$(find -type f | fzf --height=50%)"
        # file="$(fzf --height=50%)"
        if [[ "$file" != "" ]];then
            _open "$file"
        fi
    fi
}
