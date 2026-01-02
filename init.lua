require("core.autocmds")
require("core.options")
require("core.keymaps")
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
	local lazyrepo = "https://github.com/folke/lazy.nvim.git"
	local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
	if vim.v.shell_error ~= 0 then
		error("Error cloning lazy.nvim:\n" .. out)
	end
end
---@type vim.Option
local rtp = vim.opt.rtp
rtp:prepend(lazypath)

vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require("lazy").setup({
	require("plugins.mininvim"),
	require("plugins.snacks"),
	require("plugins.colortheme"),
	require("plugins.persistence"),
	require("plugins.telescope"),
	require("plugins.misc"),
	require("plugins.treesitter"),
	require("plugins.blink"),
	require("plugins.dashboard"),
	require("plugins.indent-blankline"),
	require("plugins.harpoon"),
	require("plugins.undotree"),
	require("plugins.comment"),
	require("plugins.ui"),
	require("plugins.mason"),
	require("plugins.lsp"),
	require("plugins.conform"),
	require("plugins.coderunner"),
})
