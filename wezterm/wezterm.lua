-- Import the wezterm API
local wezterm = require("wezterm")

-- Initialize an empty configuration table
local config = {}

-- Wsl2 Archlinux
-- config.default_domain = 'WSL:Arch'

-- Set the terminal theme, font and font size
config.color_scheme = 'Rosé Pine (base16)'
config.font = wezterm.font("CaskaydiaCove Nerd Font")
config.font_size = 13.0

-- Window size
config.initial_rows = 40
config.initial_cols = 150

-- Window image and opacity
config.window_background_opacity = 1.0


-- Hide the tab bar if only one tab is open
config.hide_tab_bar_if_only_one_tab = true

-- Disable Scroll Bar
config.enable_scroll_bar = false

-- Smooth hack
config.max_fps = 240

-- Enable Kitty Graphics
config.enable_kitty_graphics = true

-- Cursor style
config.default_cursor_style = "BlinkingBar"

-- Window padding
config.window_padding = {
  left = 10,
  right = 10,
  top = 10,
  bottom = 10,
}

return config
