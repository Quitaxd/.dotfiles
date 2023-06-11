cd ~/.dotfiles
mkdir ~/.config-backup
mv ~/.config/hypr/ ~/.config-backup
mv ~/.config/alacritty/ ~/.config-backup
mv ~/.config/i3/ ~/.config-backup
mv ~/.config/polybar/ ~/.config-backup
mv ~/.config/waybar/ ~/.config-backup
mv ~/.config/wofi/ ~/.config-backup
mv ~/.config/picom.conf ~/.config-backup
cp -r * ~/.config
paru -S hyprland-nvidia-git waybar-hyprland-git hyprpaper alacritty zsh wofi wlogout xfce4-terminal xdg-desktop-portal-hyprland pipewire wireplumber polkit-kde-agent qt5-wayland qt6-wayland mako  --noconfirm
cd
