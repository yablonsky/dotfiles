#!/bin/bash

title="Laptop Menu"
widthpercent=30

typeset -A menu
menu=(
    [R Reset Monitors]="xrandr --auto"
    [r Reset keyboard]="setxkbmap -option"
    [s Swap caps for esc]="setxkbmap -option caps:swapescape"
)
