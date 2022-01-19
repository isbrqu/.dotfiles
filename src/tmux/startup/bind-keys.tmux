bind-key f12 send-prefix
unbind-key C-b
# reload tmux config
bind-key f5 source-file "$TMUX_PATH/script/reload.tmux"
# split
bind-key -n M-v split-window -h 
bind-key -n M-V split-window -h -c "#{pane_current_path}"
bind-key -n M-s split-window -v
bind-key -n M-S split-window -v -c "#{pane_current_path}"
# switch
bind-key -n M-h select-pane -L
bind-key -n M-j select-pane -D
bind-key -n M-k select-pane -U
bind-key -n M-l select-pane -R
# move
bind-key -n M-H swap-pane -U
bind-key -n M-L swap-pane -D
# rotate 
bind-key -n M-r rotate-window
# break
bind-key -n M-! break-pane
# zoom 
bind-key -n M-z resize-pane -Z
# kill
bind-key -n M-q kill-pane

# -- window --

# create window 
bind-key -n M-n new-window
bind-key -n M-N new-window -c "#{pane_current_path}"
# switch
bind-key -n M-o next-window 
bind-key -n M-i previous-window
# switch with number
bind-key -n M-0 select-window -t 0
bind-key -n M-1 select-window -t 1
bind-key -n M-2 select-window -t 2
bind-key -n M-3 select-window -t 3
bind-key -n M-4 select-window -t 4
bind-key -n M-5 select-window -t 5
bind-key -n M-6 select-window -t 6
bind-key -n M-7 select-window -t 7
bind-key -n M-8 select-window -t 8
bind-key -n M-9 select-window -t 9
# bind-key -n > source-file ~/.config/tmux/test.tmux

# -- session --
bind-key f12 switch-client -l

# -- clipboard --

# bind-key -T copy-mode-vi y
bind-key -T copy-mode-vi v send-keys -X begin-selection
bind-key -T copy-mode-vi y send-keys -X copy-pipe 'xclip -se c -i'
