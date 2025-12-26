vim.api.nvim_create_autocmd("User", {
	pattern = "PersistenceLoadPost",
	callback = function()
		-- If there is more than one tab, close the first empty one
		if vim.fn.tabpagenr("$") > 1 then
			vim.cmd("tabclose 1")
		end
	end,
})

vim.api.nvim_create_autocmd("User", {
	pattern = "PersistenceSavePre",
	callback = function()
		-- Close ALL neo-tree windows before session is written
		for _, win in ipairs(vim.api.nvim_list_wins()) do
			local buf = vim.api.nvim_win_get_buf(win)
			if vim.bo[buf].filetype == "neo-tree" then
				pcall(vim.api.nvim_win_close, win, true)
			end
		end
	end,
})

local neotree = false
vim.api.nvim_create_autocmd("VimEnter", {
	once = true,
	callback = function(data)
		if vim.fn.isdirectory(data.file) == 1 then
			if neotree then
				vim.cmd("cd " .. data.file)
				require("lazy").load({ plugins = { "neo-tree.nvim" } })
				vim.cmd("Neotree reveal position=left")
			end
		end
	end,
})

-- vim.api.nvim_create_autocmd("BufWinEnter", {
-- 	callback = function(args)
-- 		local buf = args.buf
--
-- 		-- skip preview windows
-- 		if vim.wo.previewwindow then
-- 			return
-- 		end
--
-- 		-- skip non-file buffers
-- 		if vim.bo[buf].buftype ~= "" then
-- 			return
-- 		end
--
-- 		-- skip virtual buffers
-- 		local name = vim.api.nvim_buf_get_name(buf)
-- 		if name == "" or name:match("^%w+://") then
-- 			return
-- 		end
--
-- 		-- hijack only real image files
-- 		if name:match("%.png$") or name:match("%.jpe?g$") or name:match("%.gif$") or name:match("%.webp$") then
-- 			require("image").hijack_buffer(buf)
-- 		end
-- 	end,
-- })
