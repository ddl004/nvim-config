return {
	{
		"nvim-lualine/lualine.nvim",
		dependencies = { "nvim-tree/nvim-web-devicons" },
		opts = { theme = "material-nvim" },
	},
	{
		"marko-cerovac/material.nvim",
		dependencies = { "nvim-lualine/lualine.nvim" },
		lazy = false,
		opts = {
			lualine_style = "default",
			plugins = { "eyeliner", "nvim-web-devicons", "telescope" },
		},
		config = function(_, opts)
			require("material").setup(opts)
			vim.g.material_style = "deep ocean"
			vim.g.have_nerd_font = true
			vim.opt.termguicolors = true
			vim.cmd("colorscheme material")
		end,
	},
}
