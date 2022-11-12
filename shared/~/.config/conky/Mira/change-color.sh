#!/usr/bin/env bash

# This script is linked to Mira.conf lines
# So don't  add a line there unless you change here too

COLOR=${1}

echo "Processing....."
sleep 2s

echo "Stoping Mira"
killall conky

sleep 0.7s
echo "Creating bg2.png"
convert -size 80x80 xc:#$COLOR ~/.config/conky/Mira/res/bg2.png

sleep 0.7s
echo "Set up Accent"
sed -i "32s|color1 = .*|color1 = '${COLOR}',|" ~/.config/conky/Mira/Mira.conf &

sleep 1s
echo "Success.."

sleep 1s
echo "Restarting Mira..."
conky -c $HOME/.config/conky/Mira/Mira.conf &> /dev/null &

sleep 5s
echo "Done"
