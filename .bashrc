#
# ~/.bashrc
#

# colours

CYAN='\033[0;36m'
WHITE='\033[1;37m'
NC='\033[0m'

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias begin='reset; source ~/.bashrc'
alias neovim='nvim'
alias update-grub='sudo grub-mkconfig -o /boot/grub/grub.cfg'

# Full system upgrade script
alias upgrade='echo -e && fastfetch --config ~/.config/fastfetch/small.jsonc && echo -e "${CYAN} $(pacman -V)" && echo -e $NC && sudo pacman -Syu && echo && echo -e "${CYAN} $(paru -V)" && echo -e $NC && paru -Syu && echo && echo -e "${CYAN} $(flatpak --version)" && echo -e $NC && flatpak upgrade && echo'

PS1='[\u@\h \W]\$ '

# oh-my-posh
eval "$(oh-my-posh init bash --config ~/.config/oh-my-posh/wopian.omp.json)"

# Terminal default colour
echo -ne '\e]10;#22fd00\e\\'

export VISUAL=neovim;
export EDITOR=neovim;

# Logo display, does not display in a tty session
if [ -n "$DISPLAY" ]; then
	fastfetch --logo ~/.config/bash/archlinux-logo-dark-1000px.png --config ~/.config/fastfetch/blank.jsonc
fi
