# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
HISTSIZE=1000
SAVEHIST=1000
bindkey -v
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename '/home/B0LD/.zshrc'

autoload -Uz compinit
compinit
# End of lines added by compinstall

###################
###Custom Config###
###################

# Prevents lag when switching into normal mode from insert mode.
KEYTIMEOUT=1

export EDITOR="nvim"
export VISUAL="nvim"

# Configures backspace to work as expected.
stty erase '^?'
bindkey -v "$(printf '\x7f')" backward-delete-char

alias fastfetch='fastfetch --logo-type kitty --logo /home/B0LD/Pictures/Stickers_PFP/miku-arch.png --logo-width 35 --logo-height 20 --logo-padding-top 2 --logo-padding-left 3'
fastfetch

export DRONEDETECTION="/home/B0LD/Documents/Projects/Capstone/DroneDetection/"
export FIREFOX_CONF="/home/B0LD/.mozilla/firefox/1xz7lcl0.default-release/chrome/"
export IBADAH="/home/B0LD/Documents/Projects/HorrorGame"
export ZSH_PLUGINS="/home/B0LD/Documents/Tools/Zsh_Plugins"
export NVIM_CONF="/home/B0LD/.config/nvim"

alias JETSON="qemu-system-x86_64 \
  -enable-kvm \
  -m 10000 \
  -cpu host \
  -boot c \
  -drive file=/home/B0LD/Documents/Projects/Capstone/UbuntuVM/ubuntu.img,format=qcow2 \
  -device usb-ehci,id=ehci \
  -device usb-host,bus=ehci.0,vendorid=0x0955,productid=0x7e19"

FG_USER=$RED1
FG_HOST=$RED3
FG_DIR=$RED5
FG_GIT=$BROWN
BG_RESET=$BG_DARK

export PS1="%n@%m %~ %# "

# Zsh syntax highlighting
source "$ZSH_PLUGINS/zsh-autosuggestions/zsh-autosuggestions.plugin.zsh"
source "$ZSH_PLUGINS/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
[ -s "/home/B0LD/.jabba/jabba.sh" ] && source "/home/B0LD/.jabba/jabba.sh"
