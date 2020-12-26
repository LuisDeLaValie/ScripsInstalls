#!/bin/bash

# Pycritty install script

RED="\033[0;31m"
GREEN="\033[0;32m"
YELLOW="\033[0;33m"
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
CYAN='\033[0;36m'

BOLD='\033[1m'
ITALIC='\033[3m'
NORMAL="\033[0m"

texto(){
    echo -e "${GREEN}$1"
}

# echo -e "${RED}hola"
# echo -e "${GREEN}hola"
# echo -e "${YELLOW}hola"
# echo -e "${BLUE}hola"
# echo -e "${PURPLE}hola"
# echo -e "${CYAN}hola"
# echo -e "${BOLD}hola"
# echo -e "${ITALIC}hola"
# echo -e "${NORMAL}hola"


#instalr paketes
texto "instalr paketes"
sudo pacman -S libxcb xcb-util xcb-util-wm xcb-util-keysyms
      
#descargr BSPWM y sxhkd
texto "descargr BSPWM y sxhkd"
git clone https://github.com/baskerville/bspwm.git
git clone https://github.com/baskerville/sxhkd.git
git clone https://aur.archlinux.org/polybar-git.git
cd bspwm && make && sudo make install
cd ../sxhkd && make && sudo make install
cd ../polybar && makepkg -si

#crear directorios y agregar archivos de configuracion
texto "crear directorios y agregar archivos de configuracion"
mkdir -p ~/.config/{bspwm,sxhkd,polybar}
cp /usr/local/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/local/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
cp /usr/share/doc/polybar/config ~/.config/polybar/
chmod u+x ~/.config/bspwm/bspwmrc

texto "instalr alacrity"
sudo pacman -S alacrity
texto "instalr nitrogen"
sudo pacman -S nitrogen
texto "instalr rofi"
sudo pacman -S rofi
texto "instalr compton"
sudo pacman -S compton
texto "instalr zsh"
sudo pacman -S zsh
texto "instalr polybar"
sudo pacman -S polybar


# zsh y oh my zhs
texto "zsh y oh my zhs"
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

