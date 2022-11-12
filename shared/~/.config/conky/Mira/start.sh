#!/bin/bash

killall conky
sleep 2s

conky -c $HOME/.config/conky/Mira/Mira.conf &> /dev/null &
