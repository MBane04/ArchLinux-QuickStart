
yay -Syu

#install discord
yay -S discord

#install spotify
yay -S spotify

#install wine
sudo pacman -Sy wine winetricks wine-gecko wine-mono

#install LTSpice
sudo pacman -S gtk2 gtk-engine-murrine
chmod +x LTspice64.exe && wine LTspice64.exe

#install kodi
sudo pacman -S kodi

#install obs
sudo pacman -S obs-studio