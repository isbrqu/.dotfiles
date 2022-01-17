# make less more friendly for non-text input files, see lesspipe(1)
#[ -x /usr/bin/lesspipe ] && eval "$(SHELL=/bin/sh lesspipe)"

# set variable identifying the chroot you work in (used in the prompt below)
if [[ -z "${debian_chroot:-}" && -r /etc/debian_chroot ]];then
    debian_chroot=$(cat /etc/debian_chroot)
fi

# set a fancy prompt (non-color, unless we know we "want" color)
case "${TERM}" in
    xterm-color|*-256color) color_prompt=yes;;
esac

# uncomment for a colored prompt, if the terminal has the capability; turned
# off by default to not distract the user: the focus in a terminal window
# should be on the output of commands, not on the prompt
# force_color_prompt=yes

if [[ -n "${force_color_prompt}" ]];then
    # We have color support; assume it's compliant with Ecma-48
    # (ISO/IEC-6429). (Lack of such support is extremely rare, and such
    # a case would tend to support setf rather than setaf.)
    if [[ -x /usr/bin/tput ]];then
        tput setaf 1 >& /dev/null
        color_prompt=yes
    else
        color_prompt=
    fi
fi

# enable color support of ls and also add handy aliases
if [[ -x /usr/bin/dircolors ]];then
    if [[ -r ~/.dircolors ]];then
        eval "$(dircolors --bourne-shell ~/.dircolors)"
    else
        eval "$(dircolors --bourne-shell)"
    fi
fi

RED="$(tput setaf 1)"
GREEN="$(tput setaf 2)"
CYAN="$(tput setaf 4)"
RESET="$(tput sgr0)"

if [[ "${color_prompt}" = yes ]];then
    PS1='${debian_chroot:+($debian_chroot)}'
    PS1="${PS1}"'\[$GREEN\]\u@\h\[$RESET\]:\[$CYAN\]\w\[$RESET\]\n\$ '
else
    PS1='${debian_chroot:+($debian_chroot)}\u@\h:\w\n\$ '
fi

# unset color_prompt force_color_prompt

# If this is an xterm set the title to user@host:dir
if [[ "${TERM}" == xterm* || "${TERM}" == rxvt* ]];then
    PS1="\[\e]0;${debian_chroot:+($debian_chroot)}\u@\h: \w\a\]${PS1}"
fi
