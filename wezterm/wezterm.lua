local wezterm = require("wezterm")

local act = wezterm.action
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Theme
config.color_scheme = "tokyonight_night"

-- Font
-- Defaults to Roboto Cursive without
config.font_rules = {
	-- Bold-and-italic
	{
		intensity = "Bold",
		italic = true,
		font = wezterm.font_with_fallback({
			"DankMono",
		}),
	},
	{
		intensity = "Half",
		italic = true,
		font = wezterm.font_with_fallback({
			"DankMono",
		}),
	},
	-- normal-intensity-and-italic
	{
		intensity = "Normal",
		italic = true,
		font = wezterm.font_with_fallback({
			"DankMono",
		}),
	},
}
config.font = wezterm.font_with_fallback({
	"DankMono",
	sytle = "Italic",
})
config.font_size = 22.0

-- Tab
config.show_new_tab_button_in_tab_bar = true
config.use_fancy_tab_bar = true
config.show_tabs_in_tab_bar = true
config.tab_bar_at_bottom = true
config.window_frame = {

	font = wezterm.font({ family = "DankMono", weight = "Bold" }),

	font_size = 20.0,
}

-- Keys
config.disable_default_key_bindings = true
config.keys = {
	-- Resize Mode
	{
		key = "r",
		mods = "SUPER",
		action = act.ActivateKeyTable({
			name = "resize_pane",
			one_shot = false,
		}),
	},
	-- Switch Panes
	{
		key = "h",
		mods = "SUPER",
		action = act.ActivatePaneDirection("Left"),
	},
	{
		key = "j",
		mods = "SUPER",
		action = act.ActivatePaneDirection("Down"),
	},
	{
		key = "k",
		mods = "SUPER",
		action = act.ActivatePaneDirection("Up"),
	},
	{
		key = "l",
		mods = "SUPER",
		action = act.ActivatePaneDirection("Right"),
	},
	-- Move Panes
	{
		key = "p",
		mods = "SUPER",
		action = act.PaneSelect({
			mode = "SwapWithActive",
		}),
	},
	{
		key = ";",
		mods = "SUPER",
		action = act.RotatePanes("Clockwise"),
	},
	-- New Panes
	-- New Split
	{
		key = "i",
		mods = "SUPER",
		action = act.SplitVertical({}),
	},
	{
		key = "'",
		mods = "SUPER",
		action = act.SplitHorizontal({}),
	},
	-- Close Active Pane
	{
		key = "w",
		mods = "SUPER",
		action = act.CloseCurrentPane({ confirm = false }),
	},
	-- New Tab
	{
		key = "t",
		mods = "SUPER",
		action = act.SpawnTab("CurrentPaneDomain"),
	},
	-- Activate Tabs
	{
		key = "]",
		mods = "SUPER",
		action = act.ActivateTabRelative(1),
	},
	{
		key = "[",
		mods = "SUPER",
		action = act.ActivateTabRelative(-1),
	},
	-- Move Tabs
	{
		key = "}",
		mods = "SUPER|SHIFT",
		action = act.MoveTabRelative(1),
	},
	{
		key = "{",
		mods = "SUPER|SHIFT",
		action = act.MoveTabRelative(-1),
	},
	-- Close Tab
	{
		key = "q",
		mods = "SUPER",
		action = act.CloseCurrentTab({ confirm = false }),
	},
	{
		key = "v",
		mods = "SUPER",
		action = act.PasteFrom("Clipboard"),
	},
	{
		key = "c",
		mods = "SUPER",
		action = act.CopyTo("Clipboard"),
	},
}

config.key_tables = {
	-- Resize Mode
	resize_pane = {
		{
			key = "h",
			action = act.AdjustPaneSize({ "Left", 1 }),
		},
		{
			key = "j",
			action = act.AdjustPaneSize({ "Down", 1 }),
		},
		{
			key = "k",
			action = act.AdjustPaneSize({ "Up", 1 }),
		},
		{
			key = "l",
			action = act.AdjustPaneSize({ "Right", 1 }),
		},
		{
			key = "q",
			action = "PopKeyTable",
		},
		{
			key = "Escape",
			action = "PopKeyTable",
		},
	},
}

return config
