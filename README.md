## Installation

### Automatic (recommended)

```bash
./install.sh
```

> [!WARNING]
> Back up your files before running the script.
---

### Manual

#### Dependencies

```bash
paru -S lazygit starship atuin fzf bat eza fish ghostty niri yazi zoxide \
  nautilus vicinae-bin noctalia-shell git pipewire pipewire-pulse noto-fonts \
    noto-fonts-cjk noto-fonts-emoji ttf-rubik-vf bibata-cursor-theme-bin bluez bluez-utils \
    cava curl wget ffpmeg imagemagick less minizip unzip unrar neovim pipewire-jack sddm tmux \
    ttf-zed-mono-nerd wl-clipboard xdg-desktop-portal xdg-desktop-portal-gnome xdg-desktop-portal-gtk \
    loupe totem decibels papers gapless zen-browser-bin adw-gtk-theme nwg-look

```
#### Copiar los archivos de configuracion

```bash
cp -r niri ~/.config # example
```

---

## Post-installation

Some steps require manual action after installation.

### tmux

Open tmux and press `Ctrl+Space` + `I` to install the plugins.

> [!NOTE]
> This only needs to be done once on first launch.

### fish

Set fish as your default shell:

```bash
chsh -s $(which fish)
```

> [!NOTE]
> Log out and back in for the change to take effect.
