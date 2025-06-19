# Hyperland dotfiles + image

Repository for personal dotfiles and docker image for running Hyprland in distrobox with nvidia

## Prerequisites

- hyprland
- hyprlock
- hypridle
- rofi-wayland
- waybar
- xdg-desktop-portal-hyprland (screen share)
- syspower

## NVIDIA Docker

Define ARG **NVIDIA_VERSION** in [Dockerfile](Dockerfile)

Get your version from here:
* https://archive.archlinux.org/packages/n/nvidia-utils/

## Build Image

Build image by running:

```
docker buildx build -t archlinux:nvidia-<VERSION> .
```

Remember to change: **ARG NVIDIA_VERSION=570.86.16-2** in [Dockerfile](Dockerfile)