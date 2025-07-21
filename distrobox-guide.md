# Setup Distrobox
Guide for setting up Hyprland in container usable from any distro!

## Step 1:

export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/host/var/run/dbus/system_bus_socket

export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/run/host/var/run/dbus/system_bus_socket

export DBX_CONTAINER_MANAGER=docker

pkill pipewire

pkill pipewire-pulse

pkill wireplumber

dsitrobox create --image <IMAGE_NAME> --name archlinux --init

## Step 2:

distrobox-enter archlinux

set access:
- sudo usermod -aG input,video,tty,adm <USERNAME>
- uso chmod 0770 /dev/tty*

sed "s#/run/seatd.sock#/tmp/seatd.sock#g" -i /usr/sbin/seatd

sed "s#/run/seatd.sock#/tmp/seatd.sock#g" -i /usr/sbin/seatd-launch

seatd-launch Hyprland
