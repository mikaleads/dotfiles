#xrander -s 1440*2560&
setxkbmap -layout us,ara -variant ,digits -option grp:shifts_toggle caps:escape
xmodmap -e "keycode 66 = Escape"
xmodmap -e "keycode 135 = Super_R"
xinput set-prop 10 301 1
xinput set-prop 10 309 1
~/.fehbg
pgrep -x sxhkd > /dev/null || sxhkd &
#pgrep -x polybar > /dev/null || polybar &
doas ddclient start &
exec dwm
