#instalr paketes
sudo pacman -S bspwm sxhkd alacrity rofi compton zsh polybar #lemonbar
#crear directorios
mkdir ~/.config/bspwm/ ~/.config/sxhkd/ ~/.config/compton ~/Proyectos
#agregar archivos de configuracion
cp /usr/share/doc/bspwm/examples/bspwmrc ~/.config/bspwm/
cp /usr/share/doc/bspwm/examples/sxhkdrc ~/.config/sxhkd/
# zsh y oh my zhs
chsh -s $(which zsh)
sh -c "$(curl -fsSL https://raw.github.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

