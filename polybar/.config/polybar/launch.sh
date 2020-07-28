#!/usr/bin/env bash

if command -v polybar > /dev/null 2&>1
then
    if ! pgrep polybar > /dev/null 2&>1
    then
        polybar main -q &
    fi
fi
