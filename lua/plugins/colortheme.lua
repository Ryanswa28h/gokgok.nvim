return {
	{
		"shaunsingh/nord.nvim",
		lazy = false,
		priority = 1000,
		config = function()
			vim.g.nord_contrast = true
			vim.g.nord_borders = true
		end,
	},

	{
		"catppuccin/nvim",
		name = "catppuccin",
		priority = 1000,
		opts = {
			integrations = {
				notify = true,
				mini = { enabled = true, indentscope_color = "sky" },
			},
		},
	},

	{
		"folke/tokyonight.nvim",
		priority = 1000,
		lazy = false,
		opts = {
			style = "night",
			styles = { sidebars = "transparent", floats = "transparent" },
			on_highlights = function(hl, c)
				-- hl.MiniCursorword = { bg = "none", underline = true }
				-- hl.MiniCursorwordCurrent = { bg = "none", underline = true }
			end,
		},
		config = function(_, opts)
			require("tokyonight").setup(opts)

			vim.keymap.set(
				"n",
				"<leader>sth",
				"<cmd>Telescope colorscheme enable_preview=true<CR>",
				{ desc = "UI: Theme Selector" }
			)

			vim.cmd.colorscheme("nord") -- set colortheme of choice
		end,
	},
}
