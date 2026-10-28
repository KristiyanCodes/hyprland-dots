hl.window_rule({
	name = "stop-maximizing-on-open",
	match = { class = ".*" },
	suppress_event = "maximize",
})
hl.config ({
	--- look and feel ---
	general = {
		border_size = 2,
		gaps_in = 4,
		gaps_out = 8,
		float_gaps = 3,
		gaps_workspaces = 2,
		col = {
			active_border = 0xff4c566a,
			inactive_border = 0xff2e3440,
		},
		layout = "dwindle",
		no_focus_fallback = false,
		resize_on_border = true,
		extend_border_grab_area = 10,
		allow_tearing = false,
		resize_corner = 0,
		modal_parent_blocking = true,
		locale = "en_GB.UTF-8",
		snap = {
			enabled = true,
			window_gap = 5,
			monitor_gap = 10,
			border_overlap = true,
			respect_gaps = true,
		},
	},
	decoration = {
		rounding = 4,
		rounding_power = 5.0,
		active_opacity = 0.95,
		inactive_opacity = 0.85,
		fullscreen_opacity = 1.0,
		dim_modal = true,
		dim_inactive = true,
		dim_strength = 0.15,
		dim_special = 0.15,
		dim_around = 0.15,
		border_part_of_window = true,
		blur = {
			enabled = true,
			size = 4,
			passes = 1,
			xray = false,
			noise = 0.02,
			brightness = 1.0,
		},
		shadow = {
			enabled = false,
		},
	},
	animations = {
		enabled = true,
		workspace_wraparound = false,
	},
	input = {
		kb_layout = "gb",
	},
	misc = {
		font_family = "JetBrainsMono Nerd Font",
	}
})

--- binds ---
require("conf.binds")
--- autostart ---
require("conf.autostart")
--- monitors ---
require("conf.monitors")
