return {
	"akinsho/toggleterm.nvim",
	version = "*",
	lazy = false,
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<C-\>]],
			insert_mappings = true,
			terminal_mappings = true,
			direction = "horizontal",
			float_opts = {
				border = "curved",
			},
		})
	end,
}
