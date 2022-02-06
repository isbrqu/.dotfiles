display-popup -EK -w 20% -h 50% -d "#{session_path}" -R {
    tmux list-sessions -F '#{sessions}'\
    | column -t -s \"|\"\
    | fzf -q '$' --prompt 'session: ' -1\
    | cut -d ':' -f1\
    | xargs tmux switch-client -t 2> /dev/null
}
