#!/usr/bin/env bash

(setxkbmap -query | grep -q "layout:\s\+us") && setxkbmap -option ctrl:nocaps de || setxkbmap -option ctrl:nocaps us
