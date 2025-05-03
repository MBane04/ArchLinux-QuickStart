

yay -Syu

#make sure mesa and linux-firmware is installed for AMD CPU
sudo pacman -S mesa linux-firmware

#install NVIDIA Drivers
sudo pacman -S nvidia nvidia-utils nvidia-settings nvidia-dkms
sudo sed -i 's/MODULES=()/MODULES=(nvidia)/' /etc/mkinitcpio.conf
sudo mkinitcpio -P

#enable NVIDIA DRM for Wayland (will need for Hyprland later)
sudo sed -i 's/GRUB_CMDLINE_LINUX=""/GRUB_CMDLINE_LINUX="nvidia-drm.modeset=1"/' /etc/default/grub
sudo grub-mkconfig -o /boot/grub/grub.cfg

#check if the driver loaded correctly
nvidia-smi

#reboot after installing these drivers
echo "Drivers installed, please reboot"