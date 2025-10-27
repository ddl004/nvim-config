vim.g.mapleader = "\\"
require("config.lazy")

-- show relative line numbers
vim.opt.relativenumber = true
-- Minimal number of screen lines to keep above and below the cursor.
vim.opt.scrolloff = 10
-- Sets how neovim will display certain whitespace characters in the editor.
vim.opt.list = true
vim.g.have_nerd_font = true

vim.opt.incsearch = false

-- Remap default C-c mapping for SQL
vim.g.ftplugin_sql_omni_key = "<C-q>"

-- Mappings for resizing windows
vim.keymap.set("n", "<leader><Right>", "<cmd>vertical resize +10<cr>", { desc = "Increase Window Height" })
vim.keymap.set("n", "<leader><Left>", "<cmd>vertical resize -10<cr>", { desc = "Decrease Window Height" })
vim.keymap.set("n", "<leader><Up>", "<cmd>resize +10<cr>", { desc = "Increase Window Width" })
vim.keymap.set("n", "<leader><Down>", "<cmd>resize -10<cr>", { desc = "Decrease Window Width" })
-- Copy and paste to clipboard
if vim.fn.has("wsl") then
	vim.g.clipboard = {
		name = "WslClipboard",
		copy = {
			["+"] = "clip.exe",
			["*"] = "clip.exe",
		},
		paste = {
			["+"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
			["*"] = 'powershell.exe -NoLogo -NoProfile -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
		},
		cache_enabled = 0,
	}
end
vim.keymap.set({ "n", "v" }, "<leader>y", '"+y')
vim.keymap.set({ "n", "v" }, "<leader>p", '"+p')

-- Enable autoread and set up checking triggers
vim.o.autoread = true
vim.api.nvim_create_autocmd({ "FocusGained", "BufEnter" }, {
	command = "if mode() != 'c' | checktime | endif",
	pattern = "*",
})

vim.filetype.add({
	-- Detect and assign filetype based on the extension of the filename
	extension = {
		tf = "terraform",
	},
	filename = {
		["Tiltfile"] = "starlark",
	},
})

-- default terraform config does not have this set
-- https://github.com/neovim/neovim/tree/master/runtime/ftplugin
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "terraform" },
	callback = function()
		vim.opt_local.expandtab = true
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
		vim.opt_local.commentstring = "# %s"
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "sql" },
	callback = function()
		vim.opt_local.expandtab = true
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.commentstring = "-- %s"
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "proto" },
	callback = function()
		vim.opt_local.expandtab = true
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.commentstring = "// %s"
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "json" },
	callback = function()
		vim.opt_local.expandtab = true
		vim.opt_local.tabstop = 2
		vim.opt_local.shiftwidth = 2
		vim.opt_local.softtabstop = 2
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "earthfile" },
	callback = function()
		vim.opt_local.expandtab = true
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.commentstring = "# %s"
	end,
})
vim.api.nvim_create_autocmd("FileType", {
	pattern = { "starlark" },
	callback = function()
		vim.opt_local.expandtab = true
		vim.opt_local.tabstop = 4
		vim.opt_local.shiftwidth = 4
		vim.opt_local.softtabstop = 4
		vim.opt_local.commentstring = "# %s"
	end,
})
