#!/usr/bin/env bash

KEYMAP=$(setxkbmap -query | grep "layout:" | grep -Eo "[a-z]{,2}$")

echo $KEYMAP
