local wezterm = require("wezterm")
local config = wezterm.config_builder()
wezterm.log_error("Version " .. wezterm.version)
config.font = wezterm.font({ family = "JetBrainsMono Nerd Font" })
config.font_size = 15
config.window_decorations = "RESIZE"
config.color_scheme = "Tokyo Night"

config.window_close_confirmation = "NeverPrompt"

-- config.window_background_opacity = 0.80
config.max_fps = 120

-- config.macos_window_background_blur = 20
-- config.win32_system_backdrop = "Acrylic"

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
