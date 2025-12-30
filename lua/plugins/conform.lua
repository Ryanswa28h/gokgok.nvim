return {
	"stevearc/conform.nvim",
	event = { "BufWritePre" },
	cmd = { "ConformInfo" },
	keys = {
		{
			"<leader>f",
			function()
				require("conform").format({ async = true, lsp_fallback = true })
			end,
			mode = "",
			desc = "Format buffer",
		},
	},
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			python = { "ruff_format", "ruff_organize_imports" },
			javascript = { "prettier" },
			typescript = { "prettier" },
			html = { "prettier" },
			json = { "prettier" },
			yaml = { "prettier" },
			markdown = { "prettier" },
			sh = { "shfmt" },
			cpp = { "clang-format" }, -- Prettier C++ support is often finicky; clang-format is standard
		},
		format_on_save = {
			timeout_ms = 500,
			lsp_fallback = true,
		},
		formatters = {
			shfmt = {
				prepend_args = { "-i", "4" },
			},
		},
	},
}
