bind-key    -T prefix       C-o                  rotate-window
bind-key    -T prefix       C-z                  suspend-client
bind-key    -T prefix       Space                next-layout
bind-key    -T prefix       !                    break-pane
bind-key    -T prefix       \"                   split-window
bind-key    -T prefix       \#                   list-buffers
bind-key    -T prefix       \$                   command-prompt -I "#S" "rename-session -- '%%'"
bind-key    -T prefix       %                    split-window -h
bind-key    -T prefix       &                    confirm-before -p "kill-window #W? (y/n)" kill-window
bind-key    -T prefix       \'                   command-prompt -W -p index "select-window -t ':%%'"
bind-key    -T prefix       (                    switch-client -p
bind-key    -T prefix       )                    switch-client -n
bind-key    -T prefix       ,                    command-prompt -I "#W" "rename-window -- '%%'"
bind-key    -T prefix       -                    delete-buffer
bind-key    -T prefix       .                    command-prompt -T "move-window -t '%%'"
bind-key    -T prefix       /                    command-prompt -k -p key "list-keys -1N \"%%%\""
bind-key    -T prefix       :                    command-prompt
bind-key    -T prefix       \;                   last-pane
bind-key    -T prefix       =                    choose-buffer -Z
bind-key    -T prefix       ?                    list-keys -N
bind-key    -T prefix       C                    customize-mode -Z
bind-key    -T prefix       D                    choose-client -Z
bind-key    -T prefix       E                    select-layout -E
bind-key    -T prefix       L                    switch-client -l
bind-key    -T prefix       M                    select-pane -M
bind-key    -T prefix       M-u                  run-shell /home/isbrqu/.config/tmux/plugins/tpm/bindings/clean_plugins
bind-key    -T prefix       F                    run-shell -b /home/isbrqu/.config/tmux/plugins/tmux-fzf/main.sh
bind-key    -T prefix       I                    run-shell /home/isbrqu/.config/tmux/plugins/tpm/bindings/install_plugins
bind-key    -T prefix       U                    run-shell /home/isbrqu/.config/tmux/plugins/tpm/bindings/update_plugins
bind-key    -T prefix       [                    copy-mode
bind-key    -T prefix       ]                    paste-buffer -p
bind-key    -T prefix       d                    detach-client
bind-key    -T prefix       f                    command-prompt "find-window -Z -- '%%'"
bind-key    -T prefix       l                    last-window
bind-key    -T prefix       m                    select-pane -m
bind-key    -T prefix       n                    next-window
bind-key    -T prefix       o                    select-pane -t :.+
bind-key    -T prefix       p                    previous-window
bind-key    -T prefix       q                    display-panes
bind-key    -T prefix       r                    refresh-client
bind-key    -T prefix       s                    choose-tree -Zs
bind-key    -T prefix       t                    clock-mode
bind-key    -T prefix       u                    run-shell -b "/home/isbrqu/.config/tmux/plugins/tmux-fzf-url/fzf-url.sh '' screen"
bind-key    -T prefix       w                    choose-tree -Zw
bind-key    -T prefix       x                    confirm-before -p "kill-pane #P? (y/n)" kill-pane
bind-key    -T prefix       z                    resize-pane -Z
bind-key    -T prefix       \{                   swap-pane -U
bind-key    -T prefix       \}                   swap-pane -D
bind-key    -T prefix       \~                   show-messages
bind-key    -T prefix       F5                   source-file /home/isbrqu/.config/d/tmux/script/reload.tmux
bind-key    -T prefix       F12                  switch-client -l
bind-key -r -T prefix       DC                   refresh-client -c
bind-key    -T prefix       PPage                copy-mode -u
bind-key -r -T prefix       Up                   select-pane -U
bind-key -r -T prefix       Down                 select-pane -D
bind-key -r -T prefix       Left                 select-pane -L
bind-key -r -T prefix       Right                select-pane -R
bind-key    -T prefix       M-1                  select-layout even-horizontal
bind-key    -T prefix       M-2                  select-layout even-vertical
bind-key    -T prefix       M-3                  select-layout main-horizontal
bind-key    -T prefix       M-4                  select-layout main-vertical
bind-key    -T prefix       M-5                  select-layout tiled
bind-key    -T prefix       M-n                  next-window -a
bind-key    -T prefix       M-o                  rotate-window -D

bind-key -r -T prefix       M-Up                 resize-pane -U 5
bind-key -r -T prefix       M-Down               resize-pane -D 5
bind-key -r -T prefix       M-Left               resize-pane -L 5
bind-key -r -T prefix       M-Right              resize-pane -R 5
bind-key -r -T prefix       C-Up                 resize-pane -U
bind-key -r -T prefix       C-Down               resize-pane -D
bind-key -r -T prefix       C-Left               resize-pane -L
bind-key -r -T prefix       C-Right              resize-pane -R

bind-key    -T prefix       M-p                  previous-window -a
bind-key -r -T prefix       S-Up                 refresh-client -U 10
bind-key -r -T prefix       S-Down               refresh-client -D 10
bind-key -r -T prefix       S-Left               refresh-client -L 10
bind-key -r -T prefix       S-Right              refresh-client -R 10
