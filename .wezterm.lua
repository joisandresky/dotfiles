-- Pull in the wezterm API
local wezterm = require("wezterm")

-- this will hold the configuration.
local config = wezterm.config_builder()

config.font = wezterm.font("JetBrainsMono Nerd Font")
config.font_size = 15

config.enable_tab_bar = false
-- config.window_decorations = "TITLE | RESIZE"

config.color_scheme = "Everforest Dark (Gogh)"

config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

return config
