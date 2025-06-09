#!/bin/bash

# Exit on error
set -e

# Get the directory where the script is located
DOTFILES_DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

# Create symlink for .aliases
ln -sf "$DOTFILES_DIR/.aliases" "$HOME/.aliases"

# Add source to config.nu if not already present
NU_CONFIG="$HOME/.config/nushell/config.nu"
if [ ! -f "$NU_CONFIG" ]; then
    mkdir -p "$(dirname "$NU_CONFIG")"
    touch "$NU_CONFIG"
fi

if ! grep -q "source ~/.aliases" "$NU_CONFIG"; then
    echo "source ~/.aliases" >> "$NU_CONFIG"
fi

echo "Dotfiles installation complete!"