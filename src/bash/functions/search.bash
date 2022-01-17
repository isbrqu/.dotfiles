_docker_search() {
    local query="${1}"
    local type="${2-image}"
    local -r URL="${URL_DOCKER_SEARCH}"
    local url="${URL}?q=${query}&type=${type}"
    open "${url}"
}

