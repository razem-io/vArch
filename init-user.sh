if ! command -v yay &> /dev/null
then
    cd /tmp \
    && if [ -d "/tmp/yay-bin" ]; then rm -Rf /tmp/yay-bin; fi \
    && git clone https://aur.archlinux.org/yay-bin.git \
    && cd yay-bin \
    && makepkg -si --noprogressbar --noconfirm --needed \
    && cd ~ \
    && rm -R /tmp/yay-bin
fi

yay -Syu --removemake --needed --noprogressbar --noconfirm \
    yadm \
    python2 python-i3-py python-requests \
    nerd-fonts-hack polybar xorg-xbacklight papirus-icon-theme \
    fish fundle-git feh picom \
    i3-gaps i3status \
    nano firefox nautilus gvfs-smb \
    rofi htop toilet openssh wget \
    tailscale \
    intellij-idea-community-edition jdk11-openjdk sbt  \
	tmux \
    rclone \
    pavucontrol pulseaudio-ctl \
    net-tools \
    ttf-dejavu \
    xorg-server \
    xorg-apps \
    xorg-server-xvfb \
    xorg-xinit \
	xrdp xorgxrdp \
	archur \
    nix