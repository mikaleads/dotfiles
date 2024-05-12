#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- == *i* ]] && source ~/.local/share/blesh/ble.sh --noattach
[[ $- != *i* ]] && return

alias ll="lsd -la"
alias ls="lsd -l"
alias grep='grep --color=auto'
PS1='[\u@\h \W]\$ '

# aliases
#pacman
alias p="doas pacman"
alias i="doas pacman -S"
alias u="doas pacman -Syyu"
alias r="doas pacman -Rs"
#paru
alias pu="paru -Syu --noconfirm"
alias pi='paru -S --mflags --skipinteg'
#others
alias df="df -h"
alias free="free -mt"
alias vi="nvim"
alias y="yt-dlp"
alias ff="ffmpeg -f x11grab -s 1366*768 -i :0.0"
alias mp="simple-mtpfs -o --device 1 /home/michael/phone/"
alias ump="fusermount -u /home/michael/phone/"



set -o vi

eval "$(starship init bash)"
export VISUAl=nvim
export EDITOR=nvim
export TERMINAL=alacritty
export BROWSER=firefox
. "$HOME/.cargo/env"
[[ ${BLE_VERSION-} ]] && ble-attach
