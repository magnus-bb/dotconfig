# Configurations and software for Linux distros

## Cloning this repo
If you wish to clone this repo, use:
```sh
git clone --recurse-submodules
```

To make sure you get the zsh-plugin files that are included as submodules.

## Installation
If no other readmes are present, assume that the files are just to be placed inside the directory that matches the folder structure on this repo. Everything inside `~` should match your `/home/USERNAME/`.

That means that you can copy all configurations from this repo by cloning this repo into your home directory (`~`) and executing the following from your home directory:
```sh
sudo cp -ri dotconfig/~/* .
```

Be aware that this will overwrite any existing files with the same name as the files in this repo, but will prompt you before overwriting. **I recommend copying files and directories manually**.

## GNOME extensions

### [MRPIS Indicator](https://extensions.gnome.org/extension/1379/mpris-indicator-button/)
Control media player from top panel.

### [Bluetooth Quick Connect](https://extensions.gnome.org/extension/1401/bluetooth-quick-connect/)
Connect to usb devices from the top panel.

### [Dash to Dock](https://extensions.gnome.org/extension/307/dash-to-dock)
More dock customization. Also allows for blur my shell to work with the dock (in panel mode works best).

### [Coverflow Alt-Tab](https://extensions.gnome.org/extension/97/coverflow-alt-tab/)
Cool window-switching with alt+tab.

### [Compiz windows effect](https://extensions.gnome.org/extension/3210/compiz-windows-effect/)
Makes windows flexible when moving.

These settings seems to work well for me:
Friction: 4.5
Spring: 1.0
Speedup Factor: 8.0
Mass: 80
X Tiles: 6
Y Tiles: 6
Maximize effect: on
Resize effect: off

### [Burn my windows](https://github.com/Schneegans/Burn-My-Windows)
Adds effects to opening and closing windows.

### [Frippery move clock](https://extensions.gnome.org/extension/2/move-clock/)
Moves clock to the top right.

### [gTile](https://extensions.gnome.org/extension/28/gtile/)
Tiling window manager.

### [Hide Activities Button](https://extensions.gnome.org/extension/744/hide-activities-button/)
Does what it says.

### [Clipboard History](https://extensions.gnome.org/extension/4839/clipboard-history/)
Shows what you have had in your clipboard and allows you to re-copy old clipboard items.

### [Sound Input & Output Device Chooser](https://extensions.gnome.org/extension/906/sound-output-device-chooser/)
Quick menu to choose input / output devices for sound.

### [Top Panel Workspace Scroll](https://extensions.gnome.org/extension/701/top-panel-workspace-scroll/)
Scroll on the top panel to change workspace.

### [Workspace Indicator](https://extensions.gnome.org/extension/21/workspace-indicator/)
Shows you the workspaces you are using.

### [User Themes](https://extensions.gnome.org/extension/19/user-themes/)
Allows you to set shell themes.

### [Blur my Shell](https://extensions.gnome.org/extension/3193/blur-my-shell/)
Adds blurred top bar etc.

I recommend setting brightness to 80% and blur to 20%, adding blur to Dash to Dock (in panel mode), and using with WhiteSur theme.

### [Vertical workspaces](https://github.com/G-dH/vertical-workspaces)
Does what it says.

Does not work well when blurring dock with Blur My Shell, since it resets the blur effect after using the overview.

If you use the default GNOME, you will need to remap some shortcuts for Control + Super + arrow keys to change workspaces and Shift + Super + arrow keys to move windows to other workspaces. In dconf-editor, these are `/org/gnome/desktop/wm/keybindings/switch-to-workspace-up` and `/org/gnome/desktop/wm/keybindings/switch-to-workspace-down` as well as `/org/gnome/desktop/wm/keybindings/move-to-workspace-up` and `/org/gnome/desktop/wm/keybindings/move-to-workspace-down`.

## Theming

### Wallpapers
Wallpapers can be found in `~/Pictures/wallpapers`. Wallpapers can be set as a slideshow in Shotwell. Select all desired wallpapers and click `File` > `Set as Desktop Slideshow...`.

### [Colloid Nord icon theme](https://github.com/vinceliuice/Colloid-icon-theme)
Can be found in `~/.icons/`. Remember to install gnome-tweaks to apply this.

### [Numix Circle icons](https://github.com/numixproject/numix-icon-theme-circle)
Both the regular Numix icons and the circle addon can be found in `~/.icons/`.

### [Vimix cursors](https://github.com/vinceliuice/Vimix-cursors)
Can be found in `~/.icons/`. Remember to install gnome-tweaks to apply this.

### [Full WhiteSur theme](https://github.com/vinceliuice/WhiteSur-gtk-theme) (icons, GDM, etc)
If you like the look of MacOS. This theme works very well with many apps.

### [Mira conky widget (tweaked)](https://github.com/closebox73/Chepeus/#mira-theme)
All files can be found in `~/.config/conky/Mira`. Remember to install conky and conky manager to use this.

Also install `jq` with:

```sh
sudo nala install jq
```

And install the Manjari font

## Software
This is a list of the software and configurations in this repo.

### [Conky](https://github.com/brndnmtthws/conky)
Conky displays system information on your desktop. Install conky with:

```sh
sudo nala install conky
```

To use conky widgets, install [`conky-manager2`](https://github.com/zcot/conky-manager2) from their documentation.

Then open conky manager settings and add `~/.config/conky` to the list of locations where conky widgets are located.



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

## Zsh
Install Zsh with: 
```sh
sudo nala install zsh
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
curl -fsSL https://starship.rs/install.sh | sh
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

### [TheFuck](https://github.com/nvbn/thefuck)
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

## Fonts

### Fira Code Nerd Font
Get the font from [here](https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/FiraCode.zip).

This font is already configured for Kitty, but must be applied in VSCode manually.

### Manjari
Download the font from [this link])(https://fonts.google.com/download?family=Manjari).

This font is used for the Mira conky widget, and not otherwise needed.

## Misc.
### Nautilus context menu 'Open with/as...'
Right click to open Nautilus as admin can be installed with:
```sh
sudo apt install nautilus-admin
```

The only other configuration needed is already included in `~/.local/share/nautilus-python/extensions/*`

The files in this directory will add right click menu options to open directories in Kitty and open files and directories in VSCode.

Remember to reload nautilus / Files after setting these with `nautilus -q`.

### [Nautilus terminal](https://github.com/flozz/nautilus-terminal)
Embeds a terminal with your default shell in Nautilus, which can be toggled with `F4`.