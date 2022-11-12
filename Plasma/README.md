# Plasma

## Latte dock layout
Will configure Latte with a narrow floating bottom panel and a hoverable floating top panel with window title stuff. This is supposed to be used with Bismuth window tiling.  

Right click on a dock > Layouts > Edit layouts > Import > Import from Local File.

Then select `./Simpl.layout.latte`.

## Theme
Install and enable Utterly Nord through the KDE Appearance settings.

## Bismuth window tiling

### Garuda
Install `kwin-bismuth` from the AUR.

### Ubuntu
Install with:
```sh
sudo nala install kwin-bismuth
```

### Configure
Go to Settings > Window Management > Window Tiling > Enable window tiling and also Customize Layouts... to enable all layouts. 

Under the Appearance-tab of Window Tiling, you should set desired gaps.

Go to Settings > Window Management > Window Rules > Import from File... and select `no_minimum_window_size.kwinrule`.

In Settings > Appearance > Window Decorations you should enable the Bismuth theme and you should also right click on the title bar of GTK applications (such as Google Chrome) and enable 'Use system title bar and borders'.

## Keybord shortcuts
Keyboard shortcuts mostly centered around Bismuth window tiling.

It is probably important to have Bismuth and all other software with shortcuts installed before importing shortcuts, since it seems that unknown categories might halt the import.

Go to Settings > Shortcuts > Shortcuts > Import Scheme...

I have not figured out which scheme type to use, so try them out.

Select the `./tiling.kksrc` file.
