sudo pacman -S --needed --noconfirm base-devel git && \
  mkdir build && cd build && \
  git clone https://aur.archlinux.org/package-query.git && \
  cd package-query && makepkg -sri --noconfirm && \
  git clone https://aur.archlinux.org/yaourt.git && \
  cd yaourt && makepkg -sri --noconfirm && \
  sudo rm -rf yaourt/ package-query/
