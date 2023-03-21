local wezterm = require("wezterm")

local act = wezterm.action
local config = {}

if wezterm.config_builder then
	config = wezterm.config_builder()
end

-- Theme
config.color_scheme = "Catppuccin Mocha"

-- Font
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
	-- The font used in the tab bar.
	-- Roboto Bold is the default; this font is bundled
	-- with wezterm.
	-- Whatever font is selected here, it will have the
	-- main font setting appended to it to pick up any
	-- fallback fonts you may have used there.
	font = wezterm.font({ family = "DankMono", weight = "Bold" }),

	-- The size of the font in the tab bar.
	-- Default to 10. on Windows but 12.0 on other systems
	font_size = 20.0,

	-- The overall background color of the tab bar when
	-- the window is focused
	active_titlebar_bg = "#1e1e2e",

	-- The overall background color of the tab bar when
	-- the window is not focused
	inactive_titlebar_bg = "#1e1e2e",
	active_tab = {
		bg_color = "11111b",
		fg_color = "cdd6f4",
		italic = true,
	},
	inactive_tab = {
		bg_color = "1e1e2e",
		fg_color = "cdd6f4",
		italic = true,
	},
}
config.colors = {
	active_tab = {
		bg_color = "11111b",
		fg_color = "cdd6f4",
		italic = true,
	},
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
