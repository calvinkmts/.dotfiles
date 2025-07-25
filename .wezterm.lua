local wezterm = require 'wezterm'
local mux = wezterm.mux

-- This will hold the configuration.
local config = wezterm.config_builder()

wezterm.on('gui-startup', function(cmd)
  local tab, pane, window = mux.spawn_window(cmd or {})
  window:gui_window():maximize()
end)

-- This is where you actually apply your config choices.

config.window_background_image = '/home/calvink/Pictures/Wallpapers/__katsuragi_misato_neon_genesis_evangelion_and_1_more_drawn_by_vitamincera__f3fd20f9394a7f8bbe53b6a0df37e99a.jpg'

config.window_background_image_hsb = {
    brightness = 0.1,
    hue = 1.0,
    saturation = 1.0,
}

-- Finally, return the configuration to wezterm:
return config
