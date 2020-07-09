#!/bin/bash

cat <<EOT >> /etc/locale.gen
en_US.UTF-8 UTF-8 
vi_VN UTF-8
EOT

cat <<EOT >> /etc/pacman.conf
[multilib]
Include = /etc/pacman.d/mirrorlist
EOT

cat <<EOT >> /etc/sudoers
michael ALL=(ALL:ALL) ALL
michael ALL=(ALL:ALL) NOPASSWD: ALL
EOT

cat <<EOT > /etc/default/grub
GRUB_DEFAULT=0
GRUB_TIMEOUT=5
GRUB_DISTRIBUTOR="Arch"
GRUB_CMDLINE_LINUX_DEFAULT="loglevel=3 quiet splash root=/dev/nvme0n1p3 resume=/dev/nvme0n1p2"
GRUB_CMDLINE_LINUX=""
EOT


exec echo "LANG=en_US.UTF-8" > /etc/locale.conf
exec ln -sf /usr/share/zoneinfo/Asia/Ho_Chi_Minh /etc/localtime
exec hwclock --systz --localtime
