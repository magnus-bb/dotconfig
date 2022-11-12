# GNOME

## Extensions

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

### [Burn my windows](https://github.com/Schneegans/Burn-My-Windows)
Adds effects to opening and closing windows.

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

If you use the default GNOME, you will need to remap some shortcuts for Control + Super + arrow keys to change workspaces and Shift + Super + arrow keys to move windows to other workspaces. In dconf-editor, these are `/org/gnome/desktop/wm/keybindings/switch-to-workspace-up` and `/org/gnome/desktop/wm/keybindings/switch-to-workspace-down` as well as `/org/gnome/desktop/wm/keybindings/move-to-workspace-up` and `/org/gnome/desktop/wm/keybindings/move-to-workspace-down`.

## Theming

### [Full WhiteSur theme](https://github.com/vinceliuice/WhiteSur-gtk-theme) (icons, GDM, etc)
If you like the look of MacOS. This theme works very well with many apps.

## Misc.

### Nautilus context menu 'Open with/as...'
Right click to open Nautilus as admin.

#### Ubuntu
```sh
sudo nala install nautilus-admin
```

The only other configuration needed is already included in `~/.local/share/nautilus-python/extensions/*`

The files in this directory will add right click menu options to open directories in Kitty and open files and directories in VSCode.

Remember to reload nautilus / Files after setting these with `nautilus -q`.

### [Nautilus terminal](https://github.com/flozz/nautilus-terminal)
Embeds a terminal with your default shell in Nautilus, which can be toggled with `F4`.
