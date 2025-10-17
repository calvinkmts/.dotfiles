local wezterm = require 'wezterm'
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- This is where you actually apply your config choices.

local bg_img_path = '/home/calvink/Pictures/Wallpapers/GewhS2MacAAYHUx.jpg'

config.window_background_image = bg_img_path

config.window_background_image_hsb = {
    brightness = 0.03,
    hue = 1.0,
    saturation = 1.0,
}

-- Finally, return the configuration to wezterm:
return config
