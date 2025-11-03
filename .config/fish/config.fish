if status is-interactive
    # Remove default message fish_shell
    set fish_greeting
    # Enable vim_mode
    fish_vi_key_bindings
    # Disable vim_mode
    # fish_default_key_bindings
end

# Starship
starship init fish | source
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

# ASDF configuration code
if test -z $ASDF_DATA_DIR
    set _asdf_shims "$HOME/.asdf/shims"
else
    set _asdf_shims "$ASDF_DATA_DIR/shims"
end

# Do not use fish_add_path (added in Fish 3.2) because it
# potentially changes the order of items in PATH
if not contains $_asdf_shims $PATH
    set -gx --prepend PATH $_asdf_shims
end
set --erase _asdf_shims

# JAVA_HOME
. ~/.asdf/plugins/java/set-java-home.fish

# Agrega esto a ~/.config/fish/config.fish
zoxide init fish | source
