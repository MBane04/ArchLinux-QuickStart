# Install steam and flatpak
sudo pacman -S steam flatpak

# Install bottles through flatpak to access games from other launchers
flatpak install flathub com.usebottles.bottles

# Install proton for further compatibility on steam games
yay -S proton-ge-custom-bin

#install gamemode for optimizations
pacman -S meson systemd git dbus libinih gcc pkgconf #dependencies
sudo pacman -S gamemode

#Note: auto launched for games with native support, or er can edit the steam launch options using gamemoderun %command%

echo "Done, go to steam > Settings > Compatibility> Enable Steam PLay for all other titles"