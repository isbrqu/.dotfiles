# one of these should work:
# set-option -g default-terminal tmux-256color
# set-option -g default-terminal screen-256color
set-option -g default-terminal xterm-256color 
# automatically set-option window title
set-window-option -g automatic-rename on
set-option -g set-titles on
# statusbar
set-option -g status-position top
# miscelaneous options
set-option -g xterm-keys on
# vi
set-option -g status-keys vi
set-window-option -g mode-keys vi
# other
set-option -g history-limit 10000
set-window-option -g monitor-activity on
# no delay for escape key press
set-option -sg escape-time 0
# count windows and panes starting at 1, not 0
set-option -g base-index 1
set-window-option -g pane-base-index 1
# set prefix to f12
set-option -g prefix f12
set-option -g mouse off
set-option -s copy-command 'xclip -selection clipboard'
