white='#f8f8f2'
gray='#44475a'
dark_gray='#282a36'
light_purple='#bd93f9'
dark_purple='#6272a4'
cyan='#8be9fd'
green='#50fa7b'
orange='#ffb86c'
red='#ff5555'
pink='#ff79c6'
yellow='#f1fa8c'

git_branch="#(git -C #{pane_current_path} rev-parse --abbrev-ref HEAD)"
git_status="#(git -C #{pane_current_path} status --short | awk '{print $1}' | sort --unique | tr '\n' ' ')"

set-option -g status-interval 5
set-option -g message-style "bg=#{gray},fg=#{white}"
# status
set-option -g status-style "bg=#{gray},fg=#{white}"

set-option -g status-left "#[bg=#{green},fg=#{dark_gray}]"
set-option -ag status-left "#{?client_prefix,#[bg=#{yellow}],}"
set-option -ag status-left " #{session_name} "

set-option -g status-right "#[fg=#{dark_gray},bg=#{pink}] ${git_branch} "
set-option -ag status-right "#[fg=#{dark_gray},bg=#{orange}] ${git_status}"

set-window-option -g window-status-format "#[fg=#{white},bg=#{gray}]"
set-window-option -ag window-status-format " #{window_index} #{window_name} "

set-window-option -g window-status-current-format "#[fg=#{white},bg=#{dark_purple}]"
set-window-option -ag window-status-current-format " #{window_index} #{window_name} "

set-window-option -g window-status-bell-style "bold"
set-window-option -g window-status-activity-style "bold"

set-option -g pane-active-border-style "fg=#{dark_purple}"
set-option -g pane-border-style "fg=#{gray}"

# set-option -g status-right-style "fg=#{white},bg=#{pink}bold"
