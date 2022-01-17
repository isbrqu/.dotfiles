envup() {
    while IFS='=' read -r name value || [[ -n "$line" ]];do
        export "$name"="$value"
    done < ".env"
}
