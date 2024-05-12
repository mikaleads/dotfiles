#
# ~/.bash_profile
#
if [ -z "$DISPLAY" ] && [ "$XDG_VTNR" -eq 1 ]; then
  exec startx
fi

[[ -f ~/.bashrc ]] && . ~/.bashrc
nitrogen --restore &
$HOME/.local/bin/status.sh &
doas loadkeys .config/loadkeys/loadkeysrc
. "$HOME/.cargo/env"
