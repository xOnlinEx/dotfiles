if status is-interactive
    # Commands to run in interactive sessions can go here
end

# Remove default message fish_shell
set fish_greeting

abbr --add g git
abbr --add gcl git clone
abbr --add gst git status
abbr --add p python

# Aliases
alias ls='eza --icons'
alias ll='eza --icons -l'
alias la='eza --icons -la'
alias lt='eza --icons -T'
alias nv='nvim'
alias z='zoxide'
alias cat=bat
alias paru='paru --limit 5'

# ASDF configuration code
# if test -z $ASDF_DATA_DIR
#     set _asdf_shims "$HOME/.asdf/shims"
# else
#     set _asdf_shims "$ASDF_DATA_DIR/shims"
# end

# if not contains $_asdf_shims $PATH
#     set -gx --prepend PATH $_asdf_shims
# end
# set --erase _asdf_shims

# JAVA_HOME
# . ~/.asdf/plugins/java/set-java-home.fish

# Starship
starship init fish | source
set -x STARSHIP_CONFIG ~/.config/starship/starship.toml

# Zoxide
zoxide init fish | source

# Init with zellij
# if set -q ZELLIJ
# else
#   zellij
# end

# GUI xserver for wsl2
# set -x DISPLAY CHANGE_FOR_IP_WSL2:0.0
