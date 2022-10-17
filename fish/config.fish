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
alias cp="cp -Ri"
#alias showschedule="sxiv $HOME/Desktop/System64/Schedule.png"
alias sex="yt-dlp -x -o sex.opus "https://youtu.be/KAwyWkksXuo" && mplayer sex.opus"
alias mkdir="mkdir -p"
alias weather="curl wttr.in"
alias temp="curl 'wttr.in/?format=%t'"
alias transcat="queercat -f 1"
alias discord="discord --no-sandbox"
alias hack="echo access granted | lolcat -a -d 120"
alias sl="sl -w"
alias sharkvpn="echo doas openvpn /etc/openvpn/us-lax.prod.surfshark.comsurfshark_openvpn_udp.ovpn && cat ~/build/SurfShark/Login.txt" #Yes, I didnt even try to encrypt or have openvpn automatically do this for me
alias whenthe="cat /usr/bin/whenthe"
alias unmounthdds="sudo umount /mnt/lol && sudo mount /mnt/EXTRA"
alias clip="xclip -o | qrencode -t utf8"
alias storage="ncdu"

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
# alias zathura="devour zathura" # It swallows, but like, it brokey zathura
alias ClearZathura="rm -rf ~/.local/share/zathura/history" # Zathura loves to brokey
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
