#!/bin/sh

CHOICE=$(printf '%s\n' "poweroff" "reboot" | dmenu -p ?)

case "$CHOICE" in 
	poweroff) doas systemctl poweroff ;;
	reboot) doas systemctl reboot ;;
esac
	
