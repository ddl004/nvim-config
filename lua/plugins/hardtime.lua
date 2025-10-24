return {
	"m4xshen/hardtime.nvim",
	lazy = false,
	dependencies = { "MunifTanjim/nui.nvim", "rcarriga/nvim-notify" },
	opts = {
		max_count = 7,
	},
	config = function(_, opts)
		require("hardtime").setup(opts)
		vim.notify = require("notify")
	end,
}
