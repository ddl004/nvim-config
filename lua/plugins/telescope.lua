return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.8",
		dependencies = { "nvim-lua/plenary.nvim" },
		lazy = false,
		config = function()
			require("telescope").setup({
				pickers = { find_files = { hidden = true } },
				extensions = { ["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				} },
			})
			require("telescope").load_extension("ui-select")
			vim.keymap.set(
				"n",
				"<leader>ff",
				require("telescope.builtin").find_files,
				{ desc = "Telescope find files" }
			)
			vim.keymap.set("n", "<leader>fg", require("telescope.builtin").live_grep, { desc = "Telescope live grep" })
			vim.keymap.set("n", "<leader>fb", require("telescope.builtin").buffers, { desc = "Telescope buffers" })
			vim.keymap.set("n", "<leader>fh", require("telescope.builtin").help_tags, { desc = "Telescope help tags" })
		end,
	},
	{
		"nvim-telescope/telescope-file-browser.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("telescope").load_extension("file_browser")
			vim.keymap.set("n", "<leader>fz", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
		end,
	},
	{
		"nvim-telescope/telescope-ui-select.nvim",
		dependencies = { "nvim-telescope/telescope.nvim" },
		config = function()
			require("telescope").load_extension("file_browser")
			vim.keymap.set("n", "<leader>fz", ":Telescope file_browser path=%:p:h select_buffer=true<CR>")
		end,
	},
}
