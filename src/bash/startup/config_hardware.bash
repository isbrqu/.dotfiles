if [[ "$(tty)" == */pts/* && -z "${TMUX}" ]];then
    disable_inputs
fi
setxkbmap -layout us -variant altgr-intl
