return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = "<leader>tt",
			direction = "horizontal", -- 'vertical' | 'horizontal' | 'tab' | 'float'
			float_opts = {
				border = "curved",
			},
		})
	end,
}
