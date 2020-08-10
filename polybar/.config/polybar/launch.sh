#!/usr/bin/env bash

pkill polybar

if command -v polybar > /dev/null 2&>1
then
    for m in $(polybar --list-monitors | cut -d":" -f1); do
        MONITOR=$m polybar -q --reload main &
    done
fi
