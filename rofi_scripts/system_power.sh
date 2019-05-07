#!/bin/bash

title="System Power"
widthpercent=30

typeset -A menu
menu=(
    [S Shutdown]="systemctl poweroff -i"
    [r Reboot]="systemctl reboot"
    [l Lock]="i3lock -c 000000 && sleep 1"
    [s Suspend]="i3lock -c 000000 && sleep 1 && systemctl suspend"
    [h Hibernate]="i3lock -c 000000 && sleep 1 && systemctl hibernate"
    [e Logout]="i3-msg exit"
)
