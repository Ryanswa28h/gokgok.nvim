return {
	"akinsho/toggleterm.nvim",
	version = "*",
	lazy = false,
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = false,
			direction = "horizontal",
			float_opts = {
				border = "curved",
			},
		})
	end,
}
