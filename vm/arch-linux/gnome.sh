pacman -S --noconfirm mesa-libgl virtualbox-host-modules-arch && \
  pacman -S --noconfirm virtualbox-guest-utils && \
  modprobe -a vboxguest vboxsf vboxvideo && \
  echo vboxguest >> /etc/modules-load.d/virtualbox.conf && \
  echo vboxsf >> /etc/modules-load.d/virtualbox.conf && \
  echo vboxvideo >> /etc/modules-load.d/virtualbox.conf && \
  systemctl enable vboxservice && \
  systemctl start vboxservice && \
  pacman -S --noconfirm xorg-server xorg-server-utils xorg-xinit gnome gdm gnome-tweak-tool
