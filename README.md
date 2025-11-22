# Hyperland dotfiles + image

Repository for personal dotfiles and docker image for running Hyprland in distrobox with nvidia

## Required Packages (PACMAN)

```
sudo pacman -S bat \
    jq \
    fish \
    less \
    hyprcursor \
    hypridle \
    hyprlock \
    hyprpaper \
    hyprshot \
    waybar \
    swaync \
    rofi-wayland \
    pipewire \
    pipewire-alsa \
    pipewire-audio \
    pipewire-jack \
    pipewire-pulse \
    xdg-desktop-portal-hyprland \
    ttf-font-awesome \
    ttf-dejavu \
    ttf-inconsolata \
    ttf-iosevka-nerd \
    ttf-material-icons \
    otf-font-awesome \
    power-profiles-daemon
```
### Required Packages (YAY)

Install yay [here](https://github.com/Jguer/yay) first


```
yay -S wlogout
    
```

### Required Flatpak packages

```
flatpak install flathub codes.loers.Karlender
```

### Optional packages

```
sudo pacman -S pavucontrol \
    flatpak \
    discord \
    docker \
    docker-compose 
```




### Docker

If you installed docker you might have to start the socket:

```
sudo systemctl start docker.socket
sudo systemctl enable docker.socket
```

To give your user access without sudo:

```
usermod -aG docker $USER
```



## Distrobox

### NVIDIA Docker

Define ARG **NVIDIA_VERSION** in [Dockerfile](Dockerfile)

Get your version from here:
* https://archive.archlinux.org/packages/n/nvidia-utils/

### Build Image (ONLY FOR DISTROBOX)

Build image by running:

```
docker buildx build -t archlinux:nvidia-<VERSION> .
```

Remember to change: **ARG NVIDIA_VERSION=570.86.16-2** in [Dockerfile](Dockerfile)