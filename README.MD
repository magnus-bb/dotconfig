# Configurations and software for Linux distros

## Cloning this repo
If you wish to clone this repo, use:
```sh
git clone --recurse-submodules
```

To make sure you get the zsh-plugin files that are included as submodules.

## Installation
If no other readmes are present, assume that the files are just to be placed inside the directory that matches the folder structure on this repo. Everything inside `~` should match your `/home/USERNAME/`.

## Configurations and software
This is a list of the software and configurations in this repo.

### Fira Code Nerd Font
Get the font from [here](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip).

This font is already configured for Kitty, but must be applied in VSCode manually.

### Nautilus context menu 'Open with...'
The only configuration needed is already included in `~/.local/share/nautilus-python/extensions/*`

The files in this directory will add right click menu options to open directories in Kitty and open files and directories in VSCode.

Remember to reload nautilus / Files after setting these.

### [Kitty terminal emulator](https://sw.kovidgoyal.net/kitty/)
The Kitty terminal emulator can be installed with:
```sh
sudo apt-get -y install kitty
```

Remember to set Kitty as the default terminal emulator with:
```sh
sudo update-alternatives --config x-terminal-emulator
```


The only other configuration needed can be found in `~/.config/kitty.conf` as well as the aliases in `~/.zsh/aliases.zsh`.

### Pacstall
**A package manager, that - like AUR - helps install third party, but official packages**

Install Pacstall with:

```sh
sudo bash -c "$(curl -fsSL https://git.io/JsADh || wget -q https://git.io/JsADh -O -)"
```

### Nala
**Prettier `apt-get` with multiple concurrent downloads**

Install Nala with:

```sh
pacstall -I nala-deb
```

### [NVM](https://github.com/nvm-sh/nvm)
Install node version manager with:

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

Then install the latest nodejs with:

```sh
nvm install node
```

ENV vars are already set in `~/.zshrc`

### [PNPM](https://pnpm.io/)
Install PNPM with:

```sh
npm install -g pnpm
```

ENV vars are already set in `~/.zshrc`

### [Bun](https://bun.sh/)
Install Bun with:

```sh
curl https://bun.sh/install | bash
```

ENV vars are already set in `~/.zshrc`

### Zsh
Install Zsh with: 
```sh
sudo sudo nala install zsh
```

Then set Zsh as default shell with:
```sh
chsh -s $(which zsh)
```

### [LSD](https://github.com/Peltoche/lsd)
**Cooler `ls` that uses nerd fonts icons**

Download `.deb` file from [here](https://github.com/Peltoche/lsd/releases).

Install with:
```sh
sudo dpkg -i {.DEB FILE}
```

`ls` is aliased to `lsd` with some other handy shortcuts in `~/.zsh/aliases.zsh`.

### [Bat](https://github.com/sharkdp/bat)
**Better version of `cat` with syntax-highlight, git changes, line numbers etc.**

Install with:
```sh
sudo nala install bat
```

Because of clashes with other packages, this might install the binary as `batcat`.

`cat` is aliased to `batcat` with some other handy shortcuts in `~/.zsh/aliases.zsh`.

### [Neofetch](https://github.com/dylanaraps/neofetch)
**Shows nice system information on terminal boot.**

```sh
sudo nala install neofetch
``` 

The only configuration needed is already included in the `.zshrc`.

### [Fetching](https://github.com/robole/fetching)
**Alternative to Neofetch - shows random art on terminal boot**

Install by navigating to `~/.zsh/fetching/` and running:
```sh
bash install.sh
``` 

You can substitute the destination with any other directory in your `$PATH`.

### [Starship prompt](https://starship.rs/)
**Adds cool information about your environment and git.**

Install with this curl command:
```bash
curl -fsSL https://starship.rs/install.sh | bash
```

The only configuration needed is already included in the `~/.zshrc` and `~/.config/starship.toml`.

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

### [Z jump around](https://github.com/rupa/z)
**Type `z` followed by a location on your computer to `cd` to it.**

Configuration is already included, and files are already installed in `.zsh/z/`.

### [Ranger](https://github.com/ranger/ranger)
**File & filesystem explorer - type `ranger`.**

This works extremely well with Kitty.

Install with: 
```sh
sudo nala update && sudo nala install ranger caca-utils highlight atool w3m poppler-utils mediainfo
```

### Hotkeys
`.zshrc` is configured to force CTRL + BACKSPACE / DELETE to delete whole words and CTRL + LEFT / RIGHT to jump whole words, no matter the terminal used (some terms already have this).

### Correction on commands

#### [TheFuck](https://github.com/nvbn/thefuck)
**Type `fuck` or double tap ESC when a command is misspelled or wrong.**

This works VERY well with git and other software that tries to guess your intended command, whereas the 'correct' option just handles misspellings.

Configuration is included, but TheFuck will have to be installed with:

```sh
sudo nala install thefuck
```

### Glob support
You can use wildcards (`*`) in variables to e.g. show all matching files:
```bash
files='*.js'
echo $files
```
Will give you a list of all javascript files in your current dir.