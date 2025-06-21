#!/usr/bin/env bash

set -e

config_home="${XDG_CONFIG_HOME:-$HOME/.config}"
mkdir -p ~/.local/bin/
cp target/release/color-scheme-sync ~/.local/bin/color-scheme-sync
mkdir -p "$config_home/systemd/user/"
cp color-scheme-sync.service "$config_home/systemd/user/color-scheme-sync.service"

systemctl enable --now --user color-scheme-sync
