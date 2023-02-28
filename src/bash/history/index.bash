shopt -s histappend
PROMPT_COMMAND='history -a'
if [[ "${OS}" == "Windows_NT" ]];then
    HISTFILE="${BASH_PATH}/history/history"
else
    HISTFILE="${XDG_CACHE_HOME}/.bash_history"
fi
HISTCONTROL=ignorespace:ignoredups
HISTTIMEFORMAT='%F, %T '
HISTSIZE=100
HISTFILESIZE=100
HISTIGNORE=history:ls:pwd:vim:bash:man:python:node:npm:java:javac:cmd:powershell
