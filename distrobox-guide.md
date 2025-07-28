# Setup Distrobox
Guide for setting up Hyprland in container usable from any distro!

## Step 1:

``` bash
export DBUS_SESSION_BUS_ADDRESS=unix:path=/run/host/run/user/$(id -u)/bus
export DBUS_SYSTEM_BUS_ADDRESS=unix:path=/run/host/var/run/dbus/system_bus_socket
export DBX_CONTAINER_MANAGER=docker
```

``` bash
pkill pipewire
pkill pipewire-pulse
pkill wireplumber
```
``` bash
distrobox create --image <IMAGE_NAME> --name archlinux --init
```

``` bash
sudo chmod 0770 /dev/tty*
```


## Step 2:

``` bash
distrobox-enter archlinux
```

set access:

``` bash
sudo usermod -aG input,video,tty,adm USERNAME
sudo chmod 0770 /dev/tty*
```

### Important for Authentication to work

``` bash
sudo seatd -g tty #To promt root password
```
then CTRL+C to abort

``` bash
sudo seatd -g tty & #Run in background
```


For hyprlock to work, you may have to change /etc/pam.d/hyprlock
``` bash
#Change from this:
auth include login 

#To this:
auth include system-auth
```


## Step 3

Run Hyprland

``` bash
Hyprland
```



### Podman

This step is important for podman (not in use yet). Do not run these for podman

``` bash
sudo sed "s#/run/seatd.sock#/tmp/seatd.sock#g" -i /usr/sbin/seatd
sudo sed "s#/run/seatd.sock#/tmp/seatd.sock#g" -i /usr/sbin/seatd-launch
```


## Troubleshooting

If you get error "non-socket file found at socket path /run/seatd.sock"

Run these:

```
sudo rm /run/seatd.sock
sudo systemctl restart seatd
```

