#!/bin/bash

set -ouex pipefail

### Install packages

# Packages can be installed from any enabled yum repo on the image.
# RPMfusion repos are available by default in ublue main images
# List of rpmfusion packages can be found here:
# https://mirrors.rpmfusion.org/mirrorlist?path=free/fedora/updates/43/x86_64/repoview/index.html&protocol=https&redirect=1

dnf -y copr enable yalter/niri
dnf -y install niri
dnf -y copr disable yalter/niri

dnf install -y noctalia
dnf install -y foot foot-terminfo
dnf install -y cascadia-code-fonts 
dnf install -y tmux fzf fd-find bat eza 
dnf install -y zsh zsh-autosuggestions zsh-syntax-highlighting
dnf install -y cliphist wtype
dnf install -y neovim

