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

		vim.keymap.set("n", "<leader>tt", "<Cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
		vim.keymap.set({ "n", "t", "v" }, "<C-\\>", "<Cmd>ToggleTerm<CR>", { desc = "Toggle Terminal" })
	end,
}
