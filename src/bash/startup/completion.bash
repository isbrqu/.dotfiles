if [[ $- == *i* ]];then
    for file in "${BASH_PATH}/completion/"*;do
        . "${file}"
    done
fi
