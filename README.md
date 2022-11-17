# Configurations and software for Linux distros

## Cloning this repo
If you wish to clone this repo, use:
```sh
git clone --recurse-submodules
```

This will make sure you get the zsh-plugin files that are included as submodules.

## Overview
At the root if this repo, you will find directories for specific distros / desktop environments and a `shared` directory for things that work across distros and DEs. The distro names are chosen based on what the items have been tested with, but something like `ubuntu` should probably work with any Debian-based distro etc. Navigate into the directory matching your distro / desktop environment and follow the README.md for that particular environment.

## Installation
If no other readmes are present, assume that the files are just to be placed inside the directory that matches the folder structure in this directory. Everything inside `~` should match your `/home/USERNAME/`.

That means that you can copy all configurations from this repo by cloning this repo, navigating into your environment of choice and copying all files inside the `~` directory into your home directory with:
```sh
sudo cp -ri ./~/* ~
```

Be aware that this will overwrite any existing files with the same name as the files in this repo, but will prompt you before overwriting. **I recommend copying files and directories manually**.
