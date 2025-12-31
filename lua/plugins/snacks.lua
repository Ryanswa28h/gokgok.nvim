return {
	"folke/snacks.nvim",
	priority = 1000,
	lazy = false,
	---@type snacks.Config
	opts = {
		-- Disable the Snacks dashboard so it doesn't conflict with mini.starter
		dashboard = { enabled = false },

		scroll = { enabled = true },
		animate = { enabled = true },
		debug = { enabled = true },
		quickfile = { enabled = true },
		zen = { enabled = true },
		rename = { enabled = true },

		-- Bigfile: handles massive files gracefully (optional but recommended)
		bigfile = { enabled = true },
	},
	keys = {
		-- Zen Mode: Focus on code
		{
			"<leader>uz",
			function()
				Snacks.zen()
			end,
			desc = "Toggle Zen Mode",
		},
		-- Debug: Inspect variables/state
		{
			"<leader>nd",
			function()
				Snacks.debug()
			end,
			desc = "Snacks Debug",
		},
		-- Picker: Common keybinds to replace Telescope
	},
}
