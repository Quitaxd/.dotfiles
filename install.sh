cd ~/.dotfiles
rm -rf ~/.config-backup
mkdir ~/.config-backup
mv ~/Wallpapers ~/.Wallpapers-Backup
mkdir ~/Wallpapers
cp wp.jpg ~/Wallpapers/wp.jpg
mv ~/.config/hypr/ ~/.config-backup
mv ~/.config/alacritty/ ~/.config-backup
mv ~/.config/waybar/ ~/.config-backup
mv ~/.config/wofi/ ~/.config-backup
mv ~/.config/picom.conf ~/.config-backup
cp -r * ~/.config
chmod +x ~/.config/waybar/waybar.sh
rm ~/.config/README.md
rm ~/.config/install.sh


# Hyprland Apps
paru -S hyprpaper alacritty zsh wofi rofi rofi-emoji wlogout xfce4-terminal xdg-desktop-portal-hyprland xdg-desktop-portal pipewire wireplumber polkit-kde-agent qt5-wayland qt6-wayland mako hyprpaper foot thunar grimblast ksysguard hyprpicker nitch --noconfirm

cd ~/.dotfiles
