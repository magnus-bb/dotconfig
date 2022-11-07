# Kitty Nautilus Extension
#
# Place me in ~/.local/share/nautilus-python/extensions/,
# ensure you have python-nautilus package, restart Nautilus, and enjoy :)
#
# This script was written by cra0zy, edited to work for Kitty by magnus-bb and is released to the public domain

from gi import require_version
require_version('Gtk', '3.0')
require_version('Nautilus', '3.0')
from gi.repository import Nautilus, GObject
from subprocess import call
import os

# path to vscode
KITTY = 'kitty'

# what name do you want to see in the context menu?
KITTYNAME = 'Kitty'

class KittyExtension(GObject.GObject, Nautilus.MenuProvider):

    def launch_kitty(self, menu, dirs):
        # Open Kitty in every dir passed to this launcher
        for dir in dirs:
            dirpath = dir.get_location().get_path()
            safepath = '"' + dirpath + '"'
            call(KITTY + ' ' + safepath + ' &', shell=True)


    def get_file_items(self, window, files):
        item = Nautilus.MenuItem(
            name='KittyOpen',
            label='Open In ' + KITTYNAME,
            tip='Opens the selected directories with Kitty',
        )

        # Check if any of the selected files are directories, and only display the menu item if they are
        # and then pass on the directories to open kitty in
        dirs = []
        for file in files:
            filepath = file.get_location().get_path()

            # If one of the files we are trying to open is a folder
            # create a new instance of vscode
            if os.path.isdir(filepath) and os.path.exists(filepath):
                dirs.append(file)
        
        if len(dirs) > 0:
            item.connect('activate', self.launch_kitty, dirs)
            return [item]

    def get_background_items(self, window, file_):
        item = Nautilus.MenuItem(
            name='KittyOpenBackground',
            label='Open in ' + KITTYNAME,
            tip='Opens Kitty in the current directory',
        )
        item.connect('activate', self.launch_kitty, [file_])

        return [item]
