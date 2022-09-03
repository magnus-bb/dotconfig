# Configurations for Linux distros

## Installation
If no other readmes are present, assume that the files are just to be placed inside the directory that matches the folder structure on this repo. Everything inside `~` should match your `/home/USERNAME/`, and everything inside `root` should match your `/`.


## Configurations included
This is a list of the configurations in this repo with a path pointing towards the markdown file with installation instructions. 

### Nautilus context menu 'Open with...'
~/.local/share/nautilus-python/extensions/nautilus-context-menu.md

### Kitty terminal config
~/.config/kitty/kitty.md

### Zsh configuration and plugins
~/zsh.md

### NVM
Install node version manager with:

```sh
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.1/install.sh | bash
```

Then install the latest nodejs with:

```sh
nvm install node
```

ENV vars are already set in `~/.zshrc`

### PNPM
Install PNPM with:

```sh
npm install -g pnpm
```

ENV vars are already set in `~/.zshrc`

### Bun
Install Bun with:

```sh
curl https://bun.sh/install | bash
```

ENV vars are already set in `~/.zshrc`