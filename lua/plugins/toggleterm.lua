return {
	"akinsho/toggleterm.nvim",
	version = "*",
	lazy = false,
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<c-\>]],
			insert_mappings = true,
			terminal_mappings = true,
			direction = "horizontal",
			float_opts = {
				border = "curved",
			},
		})
		vim.keymap.set(
			{ "n", "i", "v" },
			"<C-\\>",
			'<Cmd>execute v:count . "ToggleTerm"<CR>',
			{ desc = "Toggle Terminal" }
		)
	end,
}
