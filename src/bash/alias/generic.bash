# clipboard
alias clipc='xclip -selection clipboard -in'
alias clipp='xclip -selection clipboard -out'
alias path-get="find -type f | fzf | sed 's/^..//' | tr -d '\n' | clipc"
alias copy-pwd='echo $PWD | xclip -selection clipboard -in'
# docker container
alias d="docker"
alias dc="docker-compose"
# docker process
alias node="docker run $DOCKER_NODE_OPTS node"
alias npm="docker run $DOCKER_NODE_OPTS npm"
alias npx="docker run $DOCKER_NODE_OPTS npx"
alias spotify-dl="docker run $DOCKER_SPOTIFYDL_OPTS spotify-dl:0.0.1"
alias youtube-dl="docker run $DOCKER_YOUTUBEDL_OPTS youtube-dl:0.0.1 --no-cache-dir"
# date
alias date-now='date "+%T-%x" | tr ":/" "--"'
# search
alias sd="ddgr"
alias sg="googler"
alias goo="googler -n 3"
alias docker-search="_docker_search"
# download
alias wget-clip='wget --tries=inf --continue "$(xclip -selection clipboard -in)"'
# list file
alias ll="ls -l "$LS_OPTS
# navigation
alias ..="prev_cd"
alias c="pushd"
alias p="popd"
# information
alias show-path='echo "$PATH" | tr -t : \\n'
