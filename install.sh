CUR_DIR="$PWD"

## Check if a bashrc file is already there.
OLD_BASH_PROFILE="$HOME/.bash_profile"
OLD_PROFILE="$HOME/.profile"
OLD_BASHRC="$HOME/.bashrc"
OLD_BASH_ALIASES="$HOME/.bash_aliases"
OLD_STARSHIP_CONFIG="$HOME/.config/starship.toml"

if [ -e "$OLD_BASH_PROFILE" ]; then
    if ! mv "$OLD_BASH_PROFILE" "$HOME/.bash_profile.bak"; then
        echo "Can't move the old bash profile file!"

        exit 1
    fi

    echo "Old bash profile file was copied to $home/.bash_profile.bak"
fi

if [ -e "$OLD_PROFILE" ]; then
    if ! mv "$OLD_PROFILE" "$HOME/.profile.bak"; then
        echo "Can't move the old profile file!"

        exit 1
    fi

    echo "Old profile file was copied to $home/.profile.bak"
fi

if [ -e "$OLD_BASHRC" ]; then
    if ! mv "$OLD_BASHRC" "$HOME/.bashrc.bak"; then
        echo "Can't move the old bashrc file!"

        exit 1
    fi

    echo "Old bashrc file was copied to $home/.bashrc.bak"
fi

if [ -e "$OLD_BASH_ALIASES" ]; then
    if ! mv "$OLD_BASH_ALIASES" "$HOME/.bash_aliases.bak"; then
        echo "Can't move the old bash aliases file!"

        exit 1
    fi

    echo "Old bash aliases file was copied to $home/.bash_aliases.bak"
fi

if [ -e "$OLD_STARSHIP_CONFIG" ]; then
    if ! mv "$OLD_STARSHIP_CONFIG" "$HOME/.config/starship.toml.bak"; then
        echo "Can't move the old starship.toml file!"

        exit 1
    fi

    echo "Old starship.toml file was copied to $home/.config/starship.toml.bak"
fi

ln -svf "$CUR_DIR/.bash_profile" "$HOME/.bash_profile" || {
    echo "Failed to create symbolic link for .bash_profile"

    exit 1
}

ln -svf "$CUR_DIR/.profile" "$HOME/.profile" || {
    echo "Failed to create symbolic link for .profile"

    exit 1
}

ln -svf "$CUR_DIR/.bashrc" "$HOME/.bashrc" || {
    echo "Failed to create symbolic link for .bashrc"

    exit 1
}

ln -svf "$CUR_DIR/.bash_aliases" "$HOME/.bash_aliases" || {
    echo "Failed to create symbolic link for .bash_aliases"

    exit 1
}

ln -svf "$CUR_DIR/starship.toml" "$HOME/.config/starship.toml" || {
    echo "Failed to create symbolic link for starship.toml"

    exit 1
}
