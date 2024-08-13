local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font("FiraCode Nerd Font")
config.font_size = 16
config.window_decorations = "RESIZE"
config.color_scheme = "Catppuccin Mocha"

config.window_background_opacity = 0.85
config.macos_window_background_blur = 10

return config
