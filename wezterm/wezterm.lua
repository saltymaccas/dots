local wezterm = require("wezterm")

local config = wezterm.config_builder()

config.initial_cols = 120
config.initial_rows = 28

config.font_size = 11
config.font = wezterm.font({
	family = "JetBrains Mono Nerd Font Mono",
	weight = "Medium",
})
config.color_scheme = "Tokyo Night"

local act = wezterm.action
local mod = {}
mod.SUPER = "ALT"
mod.SUPER_REV = "ALT|SHIFT"

config.keys = {
	{
		key = "|",
		mods = "LEADER|SHIFT",
		action = act.SplitHorizontal({ domain = "CurrentPaneDomain" }),
		{ key = "c", mods = mod.SUPER, action = act.CopyTo("Clipboard") },
		{ key = "v", mods = mod.SUPER, action = act.PasteFrom("Clipboard") },
		{ key = "t", mods = mod.SUPER, action = act.SpawnTab("DefaultDomain") },
		{ key = "w", mods = mod.SUPER, action = act.CloseCurrentTab({ confirm = false }) },
		{ key = "[", mods = mod.SUPER, action = act.ActivateTabRelative(-1) },
		{ key = "]", mods = mod.SUPER, action = act.ActivateTabRelative(1) },
		{ key = "[", mods = mod.SUPER_REV, action = act.MoveTabRelative(-1) },
		{ key = "]", mods = mod.SUPER_REV, action = act.MoveTabRelative(1) },
	},
	-- panes
	{ key = "a", mods = mod.SUPER, action = act.SplitVertical({ domain = "CurrentPaneDomain" }) },
	{ key = "q", mods = mod.SUPER, action = act.CloseCurrentPane({ confirm = false }) },
	-- panes: navigation
	{ key = "k", mods = mod.SUPER, action = act.ActivatePaneDirection("Up") },
	{ key = "j", mods = mod.SUPER, action = act.ActivatePaneDirection("Down") },
	{ key = "l", mods = mod.SUPER, action = act.ActivatePaneDirection("Right") },
	{ key = "h", mods = mod.SUPER, action = act.ActivatePaneDirection("Left") },
}

return config
