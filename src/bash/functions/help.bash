tldr() {
    local word="${1}"
    curl "tldr.monster/${word}"
}

cht() {
    local lang="${1}"
    local help="${2}"
    curl "cht.sh/${lang}/${help}"
}

