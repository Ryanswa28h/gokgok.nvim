return {
	"akinsho/toggleterm.nvim",
	version = "*",
	lazy = false,
	config = function()
		require("toggleterm").setup({
			size = 20,
			open_mapping = false,
			direction = "horizontal", -- 'vertical' | 'horizontal' | 'tab' | 'float'
			float_opts = {
				border = "curved",
			},
		})
		vim.keymap.set({ "n", "t" }, "<C-\\>", function()
			require("toggleterm").toggle()
		end, { desc = "Toggle terminal" })
	end,
}
