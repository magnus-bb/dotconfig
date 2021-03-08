# zsh configs and plugins

## Installation
Move `.zshrc` and `.zsh/` into your home folder. And see [Features](#features) for more information.

## Features
Features with a * have parts that need to be installed separately, for these settings to work.

### Neofetch*
**Shows nice system information on terminal boot.**

[Installation guide](https://github.com/dylanaraps/neofetch/wiki/Installation).

The only configuration needed is already included in the `.zshrc`.

### Starship prompt*
**Adds cool information about your environment and git.**

Install with this curl command:
```bash
curl -fsSL https://starship.rs/install.sh | bash
```

[Read more](https://starship.rs/)

The only configuration needed is already included in the `.zshrc`.

### Syntax highlight plugin
**Adds color feedback that tells you whether a command/package exists/is spelled correctly.**

Configuration is already included, and files are already installed in `.zsh/fast-syntax-highlighting/`.

### Completion plugin
**Better completion on tabs.**

Configuration is already included, and files are already installed in `.zsh/completion.zsh`.

### Autosuggestions plugin
**Uses your history to suggest a command, press RIGHT to accept it.**

Configuration is already included, and files are already installed in `.zsh/zsh-autosuggestions/`.

### History config
**Press UP/DOWN to browse command history, use CTRL + R to search through history.**

Configuration is already included, and files are already installed in `.zsh/history.zsh`.

### Aliases
**Shortcuts for common commands. Type `aliases` to see them all.**

Configuration is already included, and files are already installed in `.zsh/aliases.zsh`.

### z fuzzy search
**Type `z` followed by a location on your computer to `cd` to it.**

Configuration is already included, and files are already installed in `.zsh/z/`.

### Ranger*
**File & filesystem explorer - type `ranger`.**

[See installation and use](https://github.com/ranger/ranger) for all features and more plugins (e.g. for showing file previews in terminal).

There is no zsh configuration for this software in this repo.

### Hotkeys
`.zshrc` is configured to force CTRL + BACKSPACE / DELETE to delete whole words and CTRL + LEFT / RIGHT to jump whole words, no matter the terminal used (some terms already have this).

### Correction on commands
#### Correct option
**If you misspell a command, you will be asked if you want to correct it to the suggested command, and history is edited to this as well.**

No installation needed, config is already included (but commented out):
I have commented this option out, since I like TheFuck better.

#### TheFuck*
**Type `fuck` or double tap ESC when a command is misspelled or wrong.**

This works VERY well with git and other software that tries to guess your intended command, whereas the 'correct' option just handles misspellings.

Configuration is included, but TheFuck [will have to be installed](https://github.com/nvbn/thefuck).

### Glob support
You can use wildcards (`*`) in variables to e.g. show all matching files:
```bash
files='*.js'
echo $files
```
Will give you a list of all javascript files in your current dir.