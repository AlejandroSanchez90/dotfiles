local wezterm = require("wezterm")
local config = wezterm.config_builder()

config.font = wezterm.font({ family = "FiraCode Nerd Font", weight = "Medium" })
config.font_size = 16
config.window_decorations = "RESIZE"
config.color_scheme = "Catppuccin Mocha"
config.window_close_confirmation = "NeverPrompt"

config.window_background_opacity = 0.85

config.macos_window_background_blur = 10
config.win32_system_backdrop = "Acrylic"

config.keys = {
	{
		key = "L",
		mods = "CTRL",
		action = wezterm.action.DisableDefaultAssignment,
	},
	{
		key = "L",
		mods = "CMD",
		action = wezterm.action.DisableDefaultAssignment,
	},
}

return config
