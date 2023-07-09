function my-sync
    set log_file "log-$(date -u +"%Y-%m-%dT%H:%M:%SZ").txt"
    set commands "rsync -av --ignore-existing ~/Pictures/ /run/media/me/Framework\ Mobile/Pictures/" "rsync -av --ignore-existing ~/Videos/ /run/media/me/Framework\ Mobile/Videos/" "rsync -av --ignore-existing ~/Music/ /run/media/me/Framework\ Mobile/Music/" "rsync -av --ignore-existing /run/media/me/Framework\ Mobile/Pictures/ ~/Pictures/" "rsync -av --ignore-existing /run/media/me/Framework\ Mobile/Videos/ ~/Videos/" "rsync -av --ignore-existing  /run/media/me/Framework\ Mobile/Music/ ~/Music/"

    if test -d "/run/media/me/Framework Mobile"
        touch "/home/me/$log_file"
        for cmd in $commands
            echo "Running command: $cmd"
            eval $cmd >> "/home/me/$log_file"
        end
    else
        echo "Cannot find Framework Mobile, are you sure it is mounted?"
    end
end






