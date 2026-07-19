# nix-configs

This repository uses `nix-darwin` and `home-manager` to setup my macOS system configuration + user environment.

## Setup

1. Clone the repo to `~/repos/nix-configs` (dotfile symlinks depend on this path):

```sh
mkdir -p ~/repos && cd ~/repos
git clone https://github.com/eeldarrb/nix-configs.git
cd nix-configs
```

2. Install nix:

```sh
./install_nix.sh
```

3. Run the first switch with an explicit host (hostname auto-discovery only works after this renames the machine):

```sh
sudo nix run nix-darwin/master#darwin-rebuild -- switch --flake .#m4-pro
```

## Dotfiles

Raw configs (nvim, tmux, zsh, ghostty, karabiner) live in `dotfiles/` and are symlinked.
