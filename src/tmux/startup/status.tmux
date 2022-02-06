# status left
set-option -g status-left "#[bg=#{green},fg=#{dark_gray}]"
set-option -ag status-left "#{?client_prefix,#[bg=#{yellow}],}"
set-option -ag status-left " #{session_name} "
# status right
set-option -g status-right "#[fg=#{dark_gray},bg=#{green}]"
set-option -ag status-right " #{?pane_in_mode,#{pane_mode},normal-mode} "
set-option -ag status-right "#[fg=#{dark_gray},bg=#{pink}]"
set-option -ag status-right " ${git_branch} "
set-option -ag status-right "#[fg=#{dark_gray},bg=#{orange}]"
set-option -ag status-right " ${git_status} "
# status style
set-option -g status-style "bg=#{gray},fg=#{white}"
set-option -g status-interval 5
set-option -g message-style "bg=#{gray},fg=#{white}"
set-option -g message-command-style "bg=black,fg=yellow"

# window status
set-window-option -g automatic-rename on

set-window-option -g window-status-format "#[fg=#{white},bg=#{gray}]"
set-window-option -ag window-status-format " #{window_index} #{window_name} "

set-window-option -g window-status-current-format "#[fg=#{white},bg=#{dark_purple}]"
set-window-option -ag window-status-current-format " #{window_index} #{window_name} "

set-window-option -g window-status-bell-style "bold"
set-window-option -g window-status-activity-style "bold"
