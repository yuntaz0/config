function goodbye
    flatpak update -y && rpm-ostree update && poweroff
end