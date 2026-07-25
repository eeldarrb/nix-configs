default:
    @just --list

# build + activate the system config
switch:
    sudo darwin-rebuild switch --flake .

# update all flake inputs (or one: just update nixpkgs)
update *input:
    nix flake update {{ input }}

# install/update the private colour theme
theme:
    #!/usr/bin/env bash
    set -euo pipefail
    gh auth status >/dev/null 2>&1 || gh auth login
    dir="${XDG_DATA_HOME:-$HOME/.local/share}/themes/xcode.nvim"
    rm -rf "$dir"
    mkdir -p "$(dirname "$dir")"
    gh repo clone eeldarrb/xcode.nvim "$dir"
    mkdir -p "$HOME/.config/ghostty/themes"
    ln -sf "$dir"/extras/ghostty/* "$HOME/.config/ghostty/themes/"
    printf 'theme = xcode-dark\n' > "$HOME/.config/ghostty/theme.local"

# delete old generations + collect garbage
gc:
    sudo nix-collect-garbage --delete-older-than 30d
