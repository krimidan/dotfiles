-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- Your configuration goes in here 
local config = wezterm.config_builder()

-- Setup Nerd Font SauceCodePro - other options are Medium, Bold
config.font = wezterm.font("SauceCodePro NFM SemiBold")
config.font_size = 20

-- Color Scheme & Appearance
config.color_scheme = "Abernathy"
config.window_background_opacity = 0.96
config.macos_window_background_blur = 16

config.enable_tab_bar = false
config.window_decorations = "RESIZE"

config.window_padding = { top = 20, right = 22, bottom = 15, left = 25 }

config.automatically_reload_config = true

-- Important for Pipe, geschwungene Klammer etc.
config.send_composed_key_when_left_alt_is_pressed = true

return config
