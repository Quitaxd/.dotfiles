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

sudo apt update
sudo apt-get install -y meson wget build-essential ninja-build cmake-extras cmake gettext gettext-base fontconfig libfontconfig-dev libffi-dev libxml2-dev libdrm-dev libxkbcommon-x11-dev libxkbregistry-dev libxkbcommon-dev libpixman-1-dev libudev-dev libseat-dev seatd libxcb-dri3-dev libvulkan-dev libvulkan-volk-dev  vulkan-validationlayers-dev libvkfft-dev libgulkan-dev libegl-dev libgles2 libegl1-mesa-dev glslang-tools libinput-bin libinput-dev libxcb-composite0-dev libavutil-dev libavcodec-dev libavformat-dev libxcb-ewmh2 libxcb-ewmh-dev libxcb-present-dev libxcb-icccm4-dev libxcb-render-util0-dev libxcb-res0-dev libxcb-xinput-dev xdg-desktop-portal-wlr
wget https://gist.githubusercontent.com/Vertecedoc4545/6e54487f07a1888b656b656c0cdd9764/raw/2c5e8ccb428fc331307e2f653cab88174c051310/build-ubuntu-23.sh
chmod +x build-ubuntu-23.sh
./build-ubuntu-23.sh

git clone https://github.com/hyprwm/hyprpaper
cd hyprpaper
make all
sudo cp build /usr/bin/hyprpaper

git clone https://github.com/hyprwm/xdg-desktop-portal-hyprland
cd xdg-desktop-portal-hyprland
ninja -C build install
sudo cp ./hyprland-share-picker/build/hyprland-share-picker /usr/bin

git clone https://github.com/hyprwm/hyprpicker
cd hyprpicker
make all
sudo cp build/hyprpicker /usr/bin/hyprpicker
