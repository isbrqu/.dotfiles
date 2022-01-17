# load_sessions() {
#     local directory="${1}"
#     local name
#     for folder in "${directory}"/*/;do
#         name="${folder%%/}"
#         name="${name##*/}"
#         tmux has-session -t "$name-" &> /dev/null
#         if (( $? != 0 ));then
#             tmux new-session -d -c "$folder" -t "$name"
#         fi
#     done
# }

# load_bind_key() {
#     local file="${1}"
#     {
#     read
#     while IFS=$'\t' read -r key width height directory script;do
#         local shell_command="${TMUX_SCRIPT}/${script}"
#         tmux bind-key "${key}" display-popup -EK\
#             -w "${width}"\
#             -h "${height}"\
#             -d "${directory}"\
#             -R "${shell_command}"
#     done
#     } < "${filepath}"
# }

# main() {
#     local bind_key_file="${TMUX_PATH}/bind-popup.tsv"
#     local session_folder="${HOME}/w"
#     if [[ "$(tty)" == */pts/* ]];then
#         if [[ -z "$TMUX" ]];then
#             load_bind_key "${bind_key_file}" 
#             load_sessions "${session_folder}"
#         fi
#     fi
# }
