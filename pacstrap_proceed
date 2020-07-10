#!/bin/bash

exec pacman -Sy reflector --noconfirm
exec pacstrap -i /mnt \
  base \
  base-devel \
  vim \
  nano \
  networkmanager \
  grub \
  efibootmgr \
  linux-headers \
  linux-lts \
  linux-lts-headers 
  linux-zen \
  linux-zen-headers \
  linux-firmware \
  --noconfirm
  
exec genfstab -Up /mnt >> /mnt/etc/fstab
