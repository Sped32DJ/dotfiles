## Startup commands (fish_greeting)
cal -3
neofetch
# bash /$HOME/.config/neofetch/launch-neofetch.sh
echo "Today," (date +%m)"-"(date +%d) "You will be productive"
echo "TODO productivity list ~/Desktop/TODO.txt"

# vi chad keybinds
fish_vi_key_bindings

## QOL shortcuts
alias lsa="exa -la"
alias ls="exa -a"
alias ..="cd .."
alias mv="mv -i"
alias rm="rm -i"
alias cp="cp -i"
alias showschedule="sxiv $HOME/Desktop/System64/Schedule.png"
alias mkdir="mkdir -p"
alias weather="curl wttr.in"
alias hack="echo access granted"
alias sharkvpn="echo sudo openvpn /etc/openvpn/us-lax.prod.surfshark.comsurfshark_openvpn_udp.ovpn && cat ~/build/SurfShark/Login.txt"
alias whenthe="cat /usr/bin/whenthe"
alias unmounthdds="sudo umount /mnt/lol && sudo mount /mnt/EXTRA"

# Neofetch
alias chadfetch="neofetch --source ~/.config/neofetch/chad.txt"
alias owofetch="neofetch --source ~/.config/neofetch/AhegaoFace.txt"

# alias under is a work in progress
# trying to
# python3 test.py | bat test.py, like pybat test.py
#alias pybat="python3 && sleep 3 && bat"
## Zoxide
zoxide init fish | source
## "bat" as manpager
set -x MANPAGER "sh -c 'col -bx | bat -l man -p'"

## "nvim" as manpager
# set -x MANPAGER "nvim -c 'set ft=man' -"

## devour script (watch out, it swallows :)
# alias mpv="devour mpv" #(Really annoying to swallow)
# alias sxiv="devour sxiv"
alias zathura="devour zathura"
# alias spotify="devour spotify" (useless now, notification-daemon installed)
alias okular="devour okular"

# root privileges (makes doas work)
alias doas="doas --"

### EXPORT ###
set fish_greeting                                 # Supresses fish's intro message
set TERM "xterm-256color"                         # Sets the terminal type

# get fastest mirrors
alias mirror="doas reflector -f 30 -l 30 --number 10 --verbose --save /etc/pacman.d/mirrorlist"
alias mirrord="doas reflector --latest 50 --number 20 --sort delay --save /etc/pacman.d/mirrorlist"
alias mirrors="doas reflector --latest 50 --number 20 --sort score --save /etc/pacman.d/mirrorlist"
alias mirrora="doas reflector --latest 50 --number 20 --sort age --save /etc/pacman.d/mirrorlist"

## view images in kitty
alias icat="kitty +kitten icat"

# Starship "Add to the end of the file"
starship init fish | source
