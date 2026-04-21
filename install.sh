#!/usr/bin/env bash
# Use system bash (more portable than /bin/bash)

# List of options (your dotfiles folders)
options=(
    "fish"
    "starship"
    "ghostty"
    "hyprland"
    "matugen"
    "bat"
    "fastfetch"
    "kitty"
    "tmux"
    "vicinae"
    "yazi"
)

# Parallel array to store selection state (1 = selected, 0/empty = not selected)
selected=()

# Current cursor position (index in the menu)
cursor=0

# Function to draw the menu on screen
draw() {
    clear # clear terminal
    echo "↑ ↓ or j/k to move | SPACE to toggle | ENTER to confirm"
    echo

    # Loop through all options
    for i in "${!options[@]}"; do
        mark="[ ]"                               # default: not selected
        [[ ${selected[$i]} == 1 ]] && mark="[x]" # if selected → [x]

        # Highlight current cursor position
        if [[ $i -eq $cursor ]]; then
            echo -e "> $mark ${options[$i]}"
        else
            echo "  $mark ${options[$i]}"
        fi
    done
}

# Toggle selection on current item
toggle() {
    if [[ ${selected[$cursor]} == 1 ]]; then
        selected[$cursor]=0 # unselect
    else
        selected[$cursor]=1 # select
    fi
}

# Main loop (interactive menu)
while true; do
    draw # render menu

    # Read a single key (silent, no Enter required)
    IFS= read -rsn1 key

    # Handle arrow keys (escape sequence)
    if [[ $key == $'\x1b' ]]; then
        read -rsn2 key # read remaining chars
        case $key in
        "[A") ((cursor--)) ;; # arrow up
        "[B") ((cursor++)) ;; # arrow down
        esac

    # Vim-style navigation
    elif [[ $key == "k" ]]; then
        ((cursor--)) # move up
    elif [[ $key == "j" ]]; then
        ((cursor++)) # move down

    # SPACE → toggle selection
    elif [[ $key == $' ' ]]; then
        toggle

    # ENTER → exit menu
    elif [[ -z $key || $key == $'\n' ]]; then
        break
    fi

    # Keep cursor within bounds
    ((cursor < 0)) && cursor=0
    ((cursor >= ${#options[@]})) && cursor=$((${#options[@]} - 1))
done

# Clear screen before running actions
clear
echo "Installing selected configs..."
echo

# Loop through selected options
for i in "${!options[@]}"; do
    if [[ ${selected[$i]} == 1 ]]; then
        option="${options[$i]}"

        echo "→ Installing $option"

        # Remove existing config in ~/.config
        rm -rf "$HOME/.config/$option"

        # Create symlink from current repo → ~/.config
        # This allows real-time updates when using git
        ln -s "$(pwd)/$option" "$HOME/.config/$option"
    fi
done

echo
echo "Done ✅"
