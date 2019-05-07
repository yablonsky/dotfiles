#!/bin/bash

title="System Power"
widthpercent=30

typeset -A menu
menu=(
    [r Reset Monitors]="xrandr --auto"
    [s Swap caps for esc]="setxkbmap -option caps:swapescape"
)
