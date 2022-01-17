v() {
    if [[ -n "$1" ]];then
        vim "$1"
    elif [[ -n "$TMUX" ]];then
        local file
        file="$(fzf-tmux -p)"\
        && vim "$file"
    else
        local file
        file="$(fzf)"\
        && vim "$file"
    fi
}

