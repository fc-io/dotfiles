# Dotfiles

My personal dotfiles repository for Nushell configuration.

## Structure

- `.aliases` - Custom Nushell aliases
- `install.sh` - Installation script

## Installation

```bash
# Clone the repository
git clone <your-repo-url> ~/.dotfiles

# Run the installation script
cd ~/.dotfiles
./install.sh
```

The installation script will:
1. Create a symlink from `~/.aliases` to the repository's `.aliases` file
2. Add the source command to your Nushell config if not already present
3. Create the Nushell config directory if it doesn't exist
