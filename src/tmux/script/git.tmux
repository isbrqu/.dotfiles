if-shell "#{?#{m/r:.,${git_branch}},true,false}" {
    display-popup -EK -w 90% -h 80% -d "#{session_path}" -R {
        vim -c :Git -c :only
    }
}{ 
    display-message "#[fg=${white},bg=${red}] ERROR: no respository "
}
