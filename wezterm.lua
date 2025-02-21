-- Pull in the wezterm API
local wezterm = require("wezterm")
local act = wezterm.action

-- This will hold the config
local config = wezterm.config_builder()

-- Config settings

-- Startup
config.default_prog = { "powershell.exe", "-NoLogo" }
config.front_end = "OpenGL"
config.max_fps = 60

-- Window stuff
config.window_decorations = "NONE | RESIZE"

-- Colors
config.color_scheme = "Bamboo"

-- Keybinds
config.keys = {
	-- Toggle Opacity
	

	-- Close pane
	{
		key = "w",
		mods = "CTRL",
		action = act.CloseCurrentPane({ confirm = true }),
	},

	-- Switch pane
	{
		key = "s",
		mods = "CTRL",
		action = act.PaneSelect,
	},

	-- Split pane
	{
		key = "h",
		mods = "ALT",
		action = act.SplitPane({
			direction = "Left",
			size = { Percent = 50 },
		}),
	},
	{
		key = "j",
		mods = "ALT",
		action = act.SplitPane({
			direction = "Down",
			size = { Percent = 50 },
		}),
	},
	{
		key = "k",
		mods = "ALT",
		action = act.SplitPane({
			direction = "Up",
			size = { Percent = 50 },
		}),
	},
	{
		key = "l",
		mods = "ALT",
		action = act.SplitPane({
			direction = "Right",
			size = { Percent = 50 },
		}),
	},

	-- Resize pane
	{
		key = "h",
		mods = "CTRL | SHIFT | ALT",
		action = act.AdjustPaneSize({ "Left", 5 }),
	},
	{
		key = "j",
		mods = "CTRL | SHIFT | ALT",
		action = act.AdjustPaneSize({ "Down", 5 }),
	},
	{
		key = "k",
		mods = "CTRL | SHIFT | ALT",
		action = act.AdjustPaneSize({ "Up", 5 }),
	},
	{
		key = "l",
		mods = "CTRL | SHIFT | ALT",
		action = act.AdjustPaneSize({ "Right", 5 }),
	},
}

-- Tabs
config.hide_tab_bar_if_only_one_tab = true
config.use_fancy_tab_bar = false

-- Padding
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}

-- return
return config
