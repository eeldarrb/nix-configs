#!/usr/bin/env bash
set -euo pipefail
echo "Installing Determinate Nix..."
curl --proto '=https' --tlsv1.2 -sSf -L https://install.determinate.systems/nix | sh -s -- install
echo "Installation Complete"
