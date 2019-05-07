#!/bin/bash

title="Laptop Menu"
widthpercent=30

typeset -A menu
menu=(
    [r Reset Monitors]="xrandr --auto"
    [s Swap caps for esc]="setxkbmap -option caps:swapescape"
)
