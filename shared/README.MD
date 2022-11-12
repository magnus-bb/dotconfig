# Shared

## Theming

### Wallpapers
Wallpapers can be found in `~/Pictures/wallpapers`. Wallpapers can be set as a slideshow in something like Shotwell. Select all desired wallpapers and click `File` > `Set as Desktop Slideshow...`.

### [Colloid Nord icon theme](https://github.com/vinceliuice/Colloid-icon-theme)
Can be found in `~/.icons/`. Remember to install gnome-tweaks to apply this.

### [Numix Circle icons](https://github.com/numixproject/numix-icon-theme-circle)
Both the regular Numix icons and the circle addon can be found in `~/.icons/`.

### [Vimix cursors](https://github.com/vinceliuice/Vimix-cursors)
Can be found in `~/.icons/`. Remember to install gnome-tweaks to apply this.

### [Mira conky widget (tweaked)](https://github.com/closebox73/Chepeus/#mira-theme)
All files can be found in `~/.config/conky/Mira`. Remember to install conky and conky manager to use this.


#### Ubuntu
Install `jq` with:

```sh
sudo nala install jq
```

Install the [Manjari front](#manjari).

## Software
This is a list of the software and configurations in this repo.

### [Conky](https://github.com/brndnmtthws/conky)
Conky displays system information on your desktop.

#### Ubuntu
Install conky with:

```sh
sudo nala install conky
```

#### Configure
To use conky widgets, install [`conky-manager2`](https://github.com/zcot/conky-manager2) from their documentation.

Then open conky manager settings and add `~/.config/conky` to the list of locations where conky widgets are located.

### [Kitty terminal emulator](https://sw.kovidgoyal.net/kitty/)
Kitty comes installed with a Nord color theme.

#### Ubuntu

```sh
sudo nala -y install kitty
```

Remember to set Kitty as the default terminal emulator with:

```sh
sudo update-alternatives --config x-terminal-emulator
```

#### Configure
The only other configuration needed can be found in `~/.config/kitty.conf` as well as the aliases in `~/.zsh/aliases.zsh`.

### [NVM](https://github.com/nvm-sh/nvm)
Install node version manager with:

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

**The above command might need an updated version**

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

## Command line

### Zsh

## Ubuntu
Install Zsh with: 

```sh
sudo nala install zsh
```
### Configure
Then set Zsh as default shell with:
```sh
chsh -s $(which zsh)
```

### [LSD](https://github.com/Peltoche/lsd)
**Cooler `ls` that uses nerd fonts icons**

`ls` is aliased to `lsd` with some other handy shortcuts in `~/.zsh/aliases.zsh`.

#### Ubuntu
Download `.deb` file from [here](https://github.com/Peltoche/lsd/releases).

Install with:

```sh
sudo dpkg -i {.DEB FILE}
```

### [Bat](https://github.com/sharkdp/bat)
**Better version of `cat` with syntax-highlight, git changes, line numbers etc.**

`cat` is aliased to `batcat` / `bat` (depending on distro) with some other handy shortcuts in `~/.zsh/aliases.zsh`.

#### Ubuntu
Install with:
```sh
sudo nala install bat
```

Because of clashes with other packages, this will install the binary as `batcat`.

### [Neofetch](https://github.com/dylanaraps/neofetch)
**Shows nice system information on terminal boot.**


#### Ubuntu
```sh
sudo nala install neofetch
``` 

#### Configure
The only configuration / theme needed is already included in the `.zshrc` and in `.config/neofetch`.

### [Fetching](https://github.com/robole/fetching)
**Alternative to Neofetch - shows random art on terminal boot**

Install by navigating to `.zsh/fetching/` and running:

```sh
bash install.sh
``` 

You can substitute the destination with any other directory in your `$PATH`.

### [Starship prompt](https://starship.rs/)
**Adds cool information about your environment and git.**

Install with this curl command:
```bash
curl -fsSL https://starship.rs/install.sh | sh
```
#### Configure
The only configuration needed is already included in the `~/.zshrc` and `~/.config/starship.toml`.

### TODO: add https://github.com/zsh-users/zsh-history-substring-search

### Syntax highlight plugin (TODO: check out `zsh-syntax-highlighting` instead (comes with Garuda) and check which is better.)
**Adds color feedback that tells you whether a command/package exists/is spelled correctly.**

#### Configure
Configuration is already included, and files are already installed in `.zsh/fast-syntax-highlighting/`.

### Completion plugin
**Better completion on tabs.**

#### Configure
Configuration is already included, and files are already installed in `.zsh/completion.zsh`.

### Autosuggestions plugin
**Uses your history to suggest a command, press RIGHT to accept it.**

#### Configure
Configuration is already included, and files are already installed in `.zsh/zsh-autosuggestions/`.

### History config (TODO: check out `fzf` instead (comes with Garuda))
**Press UP/DOWN to browse command history, use CTRL + R to search through history.**

#### Configure
Configuration is already included, and files are already installed in `.zsh/history.zsh`.

### Aliases
**Shortcuts for common commands. Type `aliases` to see them all.**

#### Configure
Configuration is already included, and files are already installed in `.zsh/aliases.zsh`.

### [Z jump around](https://github.com/rupa/z)
**Type `z` followed by a location on your computer to `cd` to it.**

#### Configure
Configuration is already included, and files are already installed in `.zsh/z/`.

### [Ranger](https://github.com/ranger/ranger)
**File & filesystem explorer - type `ranger`.**

This works extremely well with Kitty because of image previews and mouse support.

#### Ubuntu
Install with: 

```sh
sudo nala update && sudo nala install ranger caca-utils highlight atool w3m poppler-utils mediainfo
```

### Hotkeys
`.zshrc` is configured to force CTRL + BACKSPACE / DELETE to delete whole words and CTRL + LEFT / RIGHT to jump whole words, no matter the terminal used (some terms already have this).

### [TheFuck](https://github.com/nvbn/thefuck)
**Type `fuck` or double tap ESC when a command is misspelled or wrong.**

This works VERY well with git and other software that tries to guess your intended command, whereas the 'correct' option just handles misspellings.

Configuration is included, but TheFuck will have to be installed with:

#### Ubuntu
```sh
sudo nala install thefuck
```

If you have any issues because of the `distutils` package missing, it can be fixed with:
```sh
sudo nala install python3-distutils -y
```

### Glob support
You can use wildcards (`*`) in variables to e.g. show all matching files:
```bash
files='*.js'
echo $files
```
Will give you a list of all javascript files in your current dir.

## Fonts

### Fira Code Nerd Font
Get the font from [here](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.2.2/FiraCode.zip).

This font is already configured for Kitty.

### Manjari
Download the font from [this link](https://fonts.google.com/download?family=Manjari).

This font is used for the Mira conky widget, and not otherwise needed.
