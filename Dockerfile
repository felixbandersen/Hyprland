FROM docker.io/library/archlinux:latest AS builder
ARG SOURCE_DATE_EPOCH=0
RUN pacman -Syy

# Misc
RUN pacman -S --noconfirm \
    libnotify \
    e2fsprogs \
    file \
    gettext \
    gtk-update-icon-cache \
    gtk4 \
    hwdata \
    libssh2 \
    libunistring \
    libxcrypt \
    mdadm \
    mesa \
    pacman-mirrorlist \
    util-linux-libs \
    util-linux-libs \
    xcb-imdkit \
    b3sum \
    bash \
    bat \
    bc \
    binutils \
    busybox \
    ca-certificates \
    cjson \
    clang-analyzer \
    containerd \
    coreutils \
    ctags \
    curl \
    dbus \
    dbus-glib \
    dconf \
    diffutils \
    docker \
    expat \
    fcft \
    fd \
    file \
    file-roller \
    flac \
    fmt \
    fontconfig \
    foot \
    freeimage \
    fribidi \
    gawk \
    gcc \
    gdbm \
    ghostscript \
    girara \
    glibmm \
    glib-networking \
    gmp \
    gnome-keyring \
    gnupg \
    gnutls \
    gobject-introspection \
    gource \
    gpgme \
    graphene \
    graphviz \
    grep \
    grim \
    gsettings-desktop-schemas \
    gspell \
    gst-plugins-base \
    gstreamer \
    gtk-layer-shell \
    gtkmm3 \
    gtksourceview4 \
    gtk-update-icon-cache \
    gtk-vnc \
    gzip \
    harfbuzz \
    hicolor-icon-theme \
    htop \
    http-parser \
    intel-media-driver \
    iptables \
    iso-codes \
    jansson \
    jbig2dec \
    jq \
    systemd \
    systemd-sysvcompat \
    json-c \
    jsoncpp \
    json-glib \
    k3b \
    lame \
    lcms2 \
    less \
    lldb \
    lm_sensors \
    logger \
    lsof \
    ltrace \
    lua \
    luajit \
    lzo \
    maim \
    man-db \
    man-pages \
    mbedtls \
    meson \
    minizip \
    mold \
    mpdecimal \
    msgpack-c \
    mtdev \
    ncdu \
    ncurses \
    neomutt \
    nettle \
    net-tools \
    newsboat \
    nftables \
    nmap \
    nodejs \
    noise-suppression-for-voice \
    npm \
    npth \
    nspr \
    nss \
    numactl \
    nuspell \
    nvtop \
    oniguruma \
    openldap \
    openssh \
    openssl \
    opus \
    orc \
    osinfo-db \
    p11-kit \
    pango \
    pangomm \
    pass \
    pass-otp \
    pavucontrol \
    pcmanfm \
    pcre \
    pcre2 \
    pdfgrep \
    pinentry \
    pixman \
    pkgconf \
    podman \
    procps \
    python3 \
    qalculate-gtk \
    qemu-img \
    re2 \
    readline \
    ripgrep \
    rsync \
    ruff \
    runc \
    samurai \
    sdl2 \
    seatd \
    sed \
    shadow \
    shared-mime-info \
    skopeo \
    buildah \
    slurp \
    snappy \
    sound-theme-freedesktop \
    spdlog \
    speexdsp \
    spice-glib \
    spice-gtk \
    starship \
    startup-notification \
    stfl \
    sudo \
    sysfsutils \
    terminus-font \
    tmux \
    tree \
    tree-sitter \
    tree-sitter-grammars \
    tzdata \
    unibilium \
    usbredir \
    util-linux \
    virt-manager \
    vte3 \
    vulkan-tools \
    w3m \
    webrtc-audio-processing \
    wget \
    wget \
    xdg-utils \
    xvidcore \
    xz \
    yajl \
    yarn \
    zbar \
    zip \
    zlib \
    zstd

# Languages/lsp/lint/editors
RUN pacman -S --noconfirm \
    stylua \
    bash-language-server \
    vscode-css-languageserver \
    vscode-html-languageserver \
    vscode-json-languageserver \
    yaml-language-server \
    ansible-language-server \
    marksman \
    taplo \
    python-black \
    python-lsp-server \
    helix 

# NVIDIA Packages
RUN pacman -U --noconfirm \
    https://archive.archlinux.org/packages/n/nvidia-utils/nvidia-utils-570.144-3-x86_64.pkg.tar.zst

# tools and utility cli/shell/scm/find/rust-rewrites
RUN pacman -S --noconfirm \
    btop \
    htop \
    git \
    bats \
    fish \
    findutils \
    dash \
    gitoxide \
    television \
    fzf \
    skim \
    glances

# Debugging inspection/network scanner
RUN pacman -S --noconfirm \
    nmap \
    netscanner \
    lurk \
    strace
    
# media
RUN pacman -S --noconfirm \
    imagemagick \
    obs-studio \
    pipewire \
    pipewire-pulse \
    wireplumber \
    neovim \
    ffmpeg

# Gui apps terminal/viewers/www/docs
RUN pacman -S --noconfirm \
    libreoffice-fresh \
    mattermost-desktop \
    gimp \
    asciinema \
    zathura \
    zathura-pdf-poppler \
    poppler \
    poppler-glib \
    firefox \
    chromium

# Fonts
RUN pacman -S --noconfirm \
    ttf-dejavu \
    ttf-font-awesome \
    ttf-inconsolata \
    ttf-iosevka-nerd

# Hyprland/wayland/portals/x11 stuff
RUN pacman -S --noconfirm \
    hyperfine \
    rofi-wayland \
    hyprcursor \
    hypridle \
    hyprland \
    hyprlock \
    hyprpaper \
    hyprpicker \
    syspower \
    imv \
    mpv \
    xcb-util \
    xcb-util-cursor \
    xcb-util-image \
    xcb-util-renderutil \
    xcb-util-wm \
    xdg-desktop-portal \
    xdg-desktop-portal-hyprland \
    xdg-desktop-portal-wlr \
    xkeyboard-config \
    xorg-server-common \
    wl-clipboard \
    wlroots \
    wlsunset \
    wofi \
    waybar \
    mako \
    dunst \
    swaync \
    xorg-xwayland

#install host-spawn
RUN wget "https://github.com/1player/host-spawn/releases/download/v1.6.0/host-spawn-x86_64" -O /usr/bin/host-spawn
RUN chmod +x /usr/bin/host-spawn

#FROM scratch
#COPY --from=builder / / 
