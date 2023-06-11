cd ~/.dotfiles
mkdir ~/.config-backup
mkdir ~/Wallpapers
cp wp.jpg ~/Wallpapers/wp.jpg
mv ~/.config/hypr/ ~/.config-backup
mv ~/.config/alacritty/ ~/.config-backup
mv ~/.config/i3/ ~/.config-backup
mv ~/.config/polybar/ ~/.config-backup
mv ~/.config/waybar/ ~/.config-backup
mv ~/.config/wofi/ ~/.config-backup
mv ~/.config/picom.conf ~/.config-backup
cp -r * ~/.config

# Paru installation
sudo pacman -S --needed git base-devel --noconfirm
git clone https://aur.archlinux.org/paru.git ~/paru
cd paru/
makepkg -si
cd
rm -rf paru/
cd ~/.dotfiles

# Hyprland Apps
paru -S hyprland-nvidia-git waybar-hyprland-git hyprpaper alacritty zsh wofi rofi rofi-emoji wlogout xfce4-terminal xdg-desktop-portal-hyprland xdg-desktop-portal pipewire wireplumber polkit-kde-agent qt5-wayland qt6-wayland mako hyprpaper foot thunar wlogout grimblast ksysguard hyprpicker --noconfirm

# i3 Apps
paru -S autotiling nm-applet polybar picom arcolinux-logout pavucontrol xorg-xkill spectacle -r volumeicon dmenu i3 --noconfirm

cd ~/.dotfiles
