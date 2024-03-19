cp /etc/default/grub /etc/default/grub.backup

if ! grep -q "ipv6.disable=1" /etc/default/grub; then
   sed -i 's/GRUB_CMDLINE_LINUX="/&ipv6.disable=1 /' /etc/default/grub
fi

grub2-mkconfig -o /boot/grub2/grub.cfg
