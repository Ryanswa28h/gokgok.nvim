return {
	-- {
	-- 	"rcarriga/nvim-notify",
	-- 	opts = {
	-- 		timeout = 3000,
	-- 		render = "compact",
	-- 	},
	-- 	init = function()
	-- 		require("notify").setup({
	-- 			background_colour = "#303030",
	-- 		})
	-- 		vim.notify = require("notify")
	-- 	end,
	-- },
	{
		"nvim-mini/mini.hipatterns",
		event = "VeryLazy",
		config = function()
			vim.api.nvim_create_autocmd("TextYankPost", {
				callback = function()
					vim.highlight.on_yank({
						higroup = "IncSearch",
						timeout = 120,
					})
				end,
			})
		end,
	},
}
