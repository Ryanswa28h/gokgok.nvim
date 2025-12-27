return {
	"github/copilot.vim",
	event = "VimEnter",
	config = function()
		-- Disable default <Tab> to prevent conflicts with blink.cmp
		vim.g.copilot_no_tab_map = true
		vim.g.copilot_assume_mapped = true

		-- Accept suggestion
		vim.keymap.set("i", "<C-g>", 'copilot#Accept("<CR>")', {
			expr = true,
			replace_keycodes = false,
			silent = true,
			desc = "Copilot Accept",
		})

		-- Cycle to next suggestion
		vim.keymap.set("i", "<C-;>", "<Plug>(copilot-next)", {
			desc = "Copilot Next",
		})

		-- Cycle to previous suggestion
		vim.keymap.set("i", "<C-,>", "<Plug>(copilot-previous)", {
			desc = "Copilot Prev",
		})

		-- Clear suggestion
		vim.keymap.set("i", "<C-x>", "<Plug>(copilot-dismiss)", {
			desc = "Copilot Dismiss",
		})
	end,
}
