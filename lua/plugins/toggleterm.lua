return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = [[<C-\>]],
			direction = "float", -- 'vertical' | 'horizontal' | 'tab' | 'float'
			float_opts = {
				border = "curved",
			},
		})
	end,
}
