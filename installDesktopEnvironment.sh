# plasma-desktop: the barebones plasma environment.
# plasma-pa: the KDE audio applet.
# plasma-nm: the KDE network applet.
# plasma-systemmonitor: the KDE task manager.
# plasma-firewall: the KDE firewall.
# plasma-browser-integration: cool stuff, it lets you manage things from your browser like media currently played via the plasma environment. Make sure to install the related extension on firefox ( you will be prompted automatically upon boot ).
# kscreen: the KDE display configurator.
# kwalletmanager: manage secure vaults ( needed to store the passwords of local applications in an encrypted format ). This also installs kwallet as a dependency, so I don't need to specify it.
# kwallet-pam: automatically unlocks secure vault upon login ( without this, each time the wallet gets queried it asks for your password to unlock it ).
# bluedevil: the KDE bluetooth manager.
# powerdevil: the KDE power manager.
# power-profiles-daemon: adds 3 power profiles selectable from powerdevil ( power saving, balanced, performance ). Make sure that its service is enabled and running ( it should be ).
# kdeplasma-addons: some useful addons.
# xdg-desktop-portal-kde: better integrates the plasma desktop in various windows like file pickers.
# xwaylandvideobridge: exposes Wayland windows to XWayland-using screen sharing apps ( useful when screen sharing on discord, but also in other instances ).
# kde-gtk-config: the native settings integration to manage GTK theming.
# breeze-gtk: the breeze GTK theme.
# cups, print-manager: the CUPS print service and the KDE front-end.
# konsole: the KDE terminal.
# dolphin: the KDE file manager.
# ffmpegthumbs: video thumbnailer for dolphin.
# firefox: the web browser.
# kate: the KDE text editor.
# okular: the KDE pdf viewer.
# gwenview: the KDE image viewer.
# ark: the KDE archive manager.
# pinta: a paint.net clone written in GTK.
# spectacle: the KDE screenshot tool.
# dragon: a simple KDE media player. A more advanced alternative based on libmpv is Haruna.
yay -S plasma-desktop plasma-pa plasma-nm plasma-systemmonitor plasma-firewall plasma-browser-integration kscreen kwalletmanager kwallet-pam bluedevil powerdevil power-profiles-daemon kdeplasma-addons xdg-desktop-portal-kde xwaylandvideobridge kde-gtk-config breeze-gtk cups print-manager konsole dolphin ffmpegthumbs firefox kate okular gwenview ark pinta spectacle dragon

#install display manager

# Install SDDM
sudo pacman -S sddm

# Enable SDDM service to make it start on boot
sudo systemctl enable sddm

# If using KDE I suggest installing this to control the SDDM configuration from the KDE settings App
pacman -S --needed sddm-kcm

# Now it's time to reboot the system
reboot