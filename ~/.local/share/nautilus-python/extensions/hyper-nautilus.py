# Hyper Nautilus Extension
#
# Place me in ~/.local/share/nautilus-python/extensions/,
# ensure you have python-nautilus package, restart Nautilus, and enjoy :)
#
# This script was written by Magnus Bendix Borregaard by apporpriating cra0zy's VSCode Nautilus Extension

from gi import require_version
require_version('Gtk', '3.0')
require_version('Nautilus', '3.0')
from gi.repository import Nautilus, GObject
from subprocess import call
import os

# path to hyper
HYPER = 'hyper'

# what name do you want to see in the context menu?
HYPERNAME = 'Hyper'


class HyperExtension(GObject.GObject, Nautilus.MenuProvider):

    def launch_hyper(self, menu, files):
        safepaths = ''

        for file in files:
            filepath = file.get_location().get_path()
            safepaths += '"' + filepath + '" '

        call(HYPER + ' ' + safepaths + '&', shell=True)

    def get_background_items(self, window, file_):
        item = Nautilus.MenuItem(
            name='HyperOpenBackground',
            label='Open in ' + HYPERNAME,
            tip='Opens Hyper in the current directory'
        )
        item.connect('activate', self.launch_hyper, [file_])

        return [item]
