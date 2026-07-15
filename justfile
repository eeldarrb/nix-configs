default:
    @just --list

# build + activate the system config
switch:
    sudo darwin-rebuild switch --flake .

# update all flake inputs (or one: just update nixpkgs)
update *input:
    nix flake update {{ input }}

# delete old generations + collect garbage
gc:
    sudo nix-collect-garbage --delete-older-than 30d
