renhash() {
    local filename="${1}"
    local extension
    local new_filename
    # verifica si el archivo a nombre existe
    if [[ ! -f "${filename}" ]];then
        echo "error (1): ${filename} doesn't exist"
        return 1
    fi
    hash_and_filename="$(sha1sum "${filename}")"
    hash="${hash_and_filename%% *}"
    new_filename="sha1-${hash}"
    # verifica si tiene extension
    if [[ "${filename}" == *.* ]];then
        extension="${filename##*.}"
        new_filename="${new_filename}.${extension}"
    fi
    # verifica si el archivo nuevo ya existe
    if [[ -f "${new_filename}" ]];then
        echo "error (1): ${new_filename} exists"
        return 1
    fi
    mv --no-clobber "${filename}" "${new_filename}"
}

