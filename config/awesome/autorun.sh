#!/bin/sh
run()
{
    if ! pgrep -U "$USER" ;
    then
        $@&
    fi
}

run firefox
run thunderbird
