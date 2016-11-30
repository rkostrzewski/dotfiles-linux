echo "Run this one at a time - be sure what you're doing!"
return 1

# 1. Format partitions
parted /dev/sda

# mklabel  msdos
#
# mkpart  primary  ext4  0%  100%
#
# set 1 boot on
#
# print
#
# quit

mkfs.ext4 /dev/sda1

# 2. Mount home partition, Create boot folder, Mount boot folder
mount /dev/sda1 /mnt

# 3. Install base and base development packages
pacman -Syy
pacman -S reflector
reflector --verbose -l 5 --sort rate --save /etc/pacman.d/mirrorlist
pacstrap /mnt base base-devel

# 4. Generate fstab
genfstab -U /mnt >> /mnt/etc/fstab

# 5. Change root into new file system
arch-chroot /mnt

# 6. Install grub
pacman -S --noconfirm grub
grub-install --target=i386-pc /dev/sda
grub-mkconfig -o /boot/grub/grub.cfg

# 7. Change time region, Change Hardware Clock to use UTC
ln -s /usr/share/zoneinfo/Europe/Warsaw /etc/localtime
hwclock --systohc

# 8. Generate locale, and set it
echo "en_US.UTF-8 UTF-8" > /etc/locale.gen
locale-gen
echo "LANG=en_US.UTF-8" > /etc/locale.conf

# 9. Create Hostname
echo "os-archlinux" > /etc/hostname
echo "127.0.0.1	  localhost.localdomain	    localhost" > /etc/hosts
echo "::1		      localhost.localdomain	    localhost" >> /etc/hosts
echo "127.0.0.1	  os-archlinux.localdomain	os-archlinux" >> /etc/hosts

# 10. Initramfs & intel-ucode
mkinitcpio -p linux
pacman -S --noconfirm intel-ucode

# 11. Set root password
passwd

# 12. Finish
exit
umount -R /mnt
reboot
