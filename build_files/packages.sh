#!/usr/bin/env bash

set -euox pipefail

# remove firefox; use flatpak to install it manually
dnf5 remove -y \
  firefox \
  firefox-langpacks

# small list of basic packages to install
dnf5 install -y \
  fastfetch \
  zsh \
  powertop 
