# Setup Distrobox
Guide for setting up Hyprland in container usable from any distro!

## Step 1:

```
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/host/run/user/$(id -u)/bus
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/run/host/var/run/dbus/system_bus_socket
export DBX_CONTAINER_MANAGER=docker
```

```
pkill pipewire
pkill pipewire-pulse
pkill wireplumber
```
```
distrobox create --image <IMAGE_NAME> --name archlinux --init
```

```
sudo chmod 0770 /dev/tty*
```


## Step 2:

```
distrobox-enter archlinux
```

set access:

```
sudo usermod -aG input,video,tty,adm USERNAME
sudo chmod 0770 /dev/tty*
```

### Important for Authentication to work

```
sudo seatd -g tty #To promt root password
```
then CTRL+C to abort

```
sudo seatd -g tty & #Run in background
```


For hyprlock to work, you may have to change /etc/pam.d/hyprlock
``` bash
#auth include login Change from this
auth include system-auth #To this
```


## Step 3

Run Hyprland

```
Hyprland
```



### Podman

This step is important for podman (not in use yet). Do not run these for podman

```
sudo sed "s#/run/seatd.sock#/tmp/seatd.sock#g" -i /usr/sbin/seatd
sudo sed "s#/run/seatd.sock#/tmp/seatd.sock#g" -i /usr/sbin/seatd-launch
```


