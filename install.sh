#!/usr/bin/env bash

# Colors for output
RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

log() { echo -e "${BLUE}==>${NC} $1"; }
ok() { echo -e "${GREEN} ✓${NC} $1"; }
warn() { echo -e "${YELLOW} !${NC} $1"; }
err() { echo -e "${RED} ✗${NC} $1"; }

install() {
    local category="$1"
    shift
    log "Installing $category..."
    paru -S --needed --noconfirm "$@"
    ok "$category installed"
}

# ── Core / CLI tools ────────────────────────────────────────────
CORE=(
    git
    curl
    wget
    less
    unzip
    unrar
    minizip
    ffmpeg
    imagemagick
)

# ── Shell ───────────────────────────────────────────────────────
SHELL=(
    fish
    starship
    atuin
    fzf
    zoxide
)

# ── Terminal tools ──────────────────────────────────────────────
TERMINAL=(
    bat
    eza
    yazi
    lazygit
    neovim
    tmux
)

# ── Desktop / Wayland ───────────────────────────────────────────
DESKTOP=(
    niri
    sddm
    ghostty
    wl-clipboard
    xdg-desktop-portal
    xdg-desktop-portal-gnome
    xdg-desktop-portal-gtk
)

# ── Audio ───────────────────────────────────────────────────────
AUDIO=(
    pipewire
    pipewire-pulse
    pipewire-jack
    cava
)

# ── Fonts ───────────────────────────────────────────────────────
FONTS=(
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji
    ttf-rubik-vf
    ttf-zed-mono-nerd
)

# ── Themes / Appearance ─────────────────────────────────────────
APPEARANCE=(
    bibata-cursor-theme-bin
    noctalia-shell
    vicinae-bin
)

# ── Apps ────────────────────────────────────────────────────────
APPS=(
    nautilus
    loupe
    totem
    decibels
    papers
    gapless
    zen-browser-bin
)

# ── Bluetooth ───────────────────────────────────────────────────
BLUETOOTH=(
    bluez
    bluez-utils
)

# ════════════════════════════════════════════════════════════════

warn "Back up your config files before proceeding."
echo
read -rp "Continue? [y/N] " confirm
[[ "$confirm" =~ ^[Yy]$ ]] || {
    err "Aborted."
    exit 1
}

echo

install "Core tools" "${CORE[@]}"
install "Shell" "${SHELL[@]}"
install "Terminal tools" "${TERMINAL[@]}"
install "Desktop" "${DESKTOP[@]}"
install "Audio" "${AUDIO[@]}"
install "Fonts" "${FONTS[@]}"
install "Appearance" "${APPEARANCE[@]}"
install "Apps" "${APPS[@]}"
install "Bluetooth" "${BLUETOOTH[@]}"

echo
ok "All done!"
