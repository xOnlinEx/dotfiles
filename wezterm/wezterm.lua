local wezterm = require 'wezterm'
local config = wezterm.config_builder()

config.default_domain = 'WSL:Arch'

--config.color_scheme = 'Catppuccin Mocha'
--config.color_scheme = 'Kanagawa Dragon (Gogh)'
--config.font = wezterm.font 'FantasqueSansM Nerd Font'
config.font = wezterm.font 'Iosevka NF'
config.font_size = 15.0
config.hide_tab_bar_if_only_one_tab = true
--config.default_cursor_style = 'BlinkingBar'
config.window_background_opacity = 1.0
--config.win32_system_backdrop = 'Acrylic'
--config.win32_system_backdrop = 'Mica'
--config.win32_system_backdrop = 'Tabbed'
-- config.background = {
--     {
--         source = { File = { path = '/Users/xOnlinEx/Pictures/Wallpapers/result.png'}},
--         opacity = 1.0,
--         width = "100%",
--         hsb = {brightness = 0.9},
--     }
-- }
config.colors = {
    foreground = "#c5c9c5",
    background = "#181616",

    cursor_bg = "#c8c093",
    cursor_fg = "#c8c093",
    cursor_border = "#c8c093",

    selection_fg = "#c8c093",
    selection_bg = "#2d4f67",

    scrollbar_thumb = "#0d0c0c",
    split = "#0d0c0c",

    ansi = { "#0d0c0c", "#c4746e", "#8a9a7b", "#c4b28a", "#8ba4b0", "#a292a3", "#8ea4a2", "#C8C093" },
    brights = { "#a6a69c", "#E46876", "#87a987", "#E6C384", "#7FB4CA", "#938AA9", "#7AA89F", "#c5c9c5" },
    indexed = { [16] = "#ffa066", [17] = "#ff5d62" },
}

return config