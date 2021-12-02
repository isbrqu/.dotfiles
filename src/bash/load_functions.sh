
load_tmux() {
    if [[ "$(tty)" == */pts/* ]];then
        if [[ -z "$TMUX" ]];then
            for folder in "$HOME"/w/*/;do
                name="${folder%%/}"
                name="${name##*/}"
                tmux has-session -t "$name-" &> /dev/null
                if (( $? != 0 ));then
                    tmux new-session -d -c "$folder" -t "$name"
                fi
            done
            tmux_start
        fi
    fi
}

load_bash_completion() {
    # enable programmable completion features (you don't need to enable
    # this, if it's already enabled in /etc/bash.bashrc and /etc/profile
    # sources /etc/bash.bashrc).
    if ! shopt -oq posix; then
        if [[ -f /usr/share/bash-completion/bash_completion ]];then
            . /usr/share/bash-completion/bash_completion
        elif [[ -f /etc/bash_completion ]];then
            . /etc/bash_completion
        fi
    fi
    # personal
    if [[ $- == *i* ]];then
        for file in "$BASH_PATH/completion-"*;do
            . "$file"
        done
    fi
}

load_bash_color() {
    # enable color support of ls and also add handy aliases
    if [[ -x /usr/bin/dircolors ]];then
        if [[ -r ~/.dircolors ]];then
            eval "$(dircolors --bourne-shell ~/.dircolors)"
        else
            eval "$(dircolors --bourne-shell)"
        fi
    fi
}

load_bash_key_bindings() {
    for file in "$BASH_PATH/key-bindings-"*;do
        . "$file"
    done
}

