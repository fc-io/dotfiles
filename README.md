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

## Aliases

The repository includes several useful aliases:

### Navigation
- `..` - Go up one directory
- `...` - Go up two directories
- `....` - Go up three directories

### List
- `ls` - List with details
- `la` - List all files with details

### Git
- `gs` - Git status
- `ga` - Git add
- `gc` - Git commit (verbose)
- `gca` - Git commit all (verbose)
- `gcam` - Git commit all with message
- `gcm` - Git commit with message
- `gl` - Git log with custom formatting
- `gp` - Git push

### Quick Edit
- `nucfg` - Edit Nushell config
- `aliases` - Edit aliases file

### System
- `c` - Clear screen
- `h` - Show history
- `path` - Show PATH entries

## Customization

To add your own aliases, edit the `.aliases` file and run `source ~/.aliases` or restart your shell.