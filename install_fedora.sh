cd ~/.dotfiles
rm -rf ~/.config-backup
mkdir ~/.config-backup
mv ~/Wallpapers ~/.Wallpapers-Backup
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

sudo dnf install ninja-build cmake meson gcc-c++ libxcb-devel libX11-devel pixman-devel wayland-protocols-devel cairo-devel pango-devel -y
git clone --recursive https://github.com/hyprwm/Hyprland
cd Hyprland
meson _build
ninja -C _build
sudo ninja -C _build install
sudo cp /usr/local/share/wayland-sessions/hyprland.desktop /usr/share/wayland-sessions/
wget https://raw.githubusercontent.com/unxsh/nitch/main/setup.sh && sh setup.sh

echo "Check /etc/gdm/custom.conf and make sure Wayland is enabled."
