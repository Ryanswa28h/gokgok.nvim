return {
	"akinsho/toggleterm.nvim",
	version = "*",
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = false,
			direction = "horizontal", -- 'vertical' | 'horizontal' | 'tab' | 'float'
			float_opts = {
				border = "curved",
			},
		})
		vim.keymap.set("n", "<leader>tt", function()
			require("toggleterm").toggle()
		end, { desc = "Toggle terminal" })
	end,
}
