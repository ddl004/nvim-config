return {
	"stevearc/conform.nvim",
	keys = {
		{
			"<leader>F",
			function()
				require("conform").format({ async = true })
			end,
		},
	},
	opts = {
		log_level = vim.log.levels.DEBUG,
		formatters_by_ft = {
			lua = { "stylua" },
			sql = { "sqlfluff" },
		},
		formatters = {
			-- default config locations: https://docs.sqlfluff.com/en/1.2.1/configuration.html
			sqlfluff = {
				args = { "fix", "--show-lint-violations", "-" },
				require_cwd = false,
			},
		},
	},
}
