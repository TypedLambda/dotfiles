#!/bin/sh

dir=$HOME/.screenlayout
name="$dir/`xrandr --listmonitors | awk  'BEGIN{FS="[\/ \t]*" } /[0-9]:/{n = n $7 $5} END{print n}'`.sh"

if [ -f "$name" -a -s "$name" ] ; then 
    echo activating "$name"
    exec "$name"
else 
    echo new screenlayout "$name"
    touch "$name"
    arandr 
fi

if [ -f "$name" -a ! -s "$name" ] ; then 
    rm -f "$name"
fi