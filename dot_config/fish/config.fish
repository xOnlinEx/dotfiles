# Remove default message fish_shell
set fish_greeting

# Enable vim_mode
set -g fish_key_bindings fish_vi_key_bindings
fish_vi_key_bindings

# Starship
starship init fish | source
set -x STARSHIP_CONFIG ~/.config/starship/style-3.toml

# Zoxide
zoxide init fish | source

# Atuin
atuin init fish | source

# Mise
mise activate fish | source
