#!/bin/bash

pacman -Sy --noconfirm archlinux-keyring
pacman -Syyu --noconfirm
pacman -S --noconfirm --needed \
    base-devel \
    git \
    net-tools \
    python3 \
    rxvt-unicode \
    supervisor \
    ttf-dejavu \
    x11vnc \
    xorg-server \
    xorg-apps \
    xorg-server-xvfb \
    xorg-xinit

sudo -H -u vagrant bash -c '/vagrant/init-user.sh' 