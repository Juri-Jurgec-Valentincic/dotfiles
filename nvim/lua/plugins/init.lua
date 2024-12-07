return {
	{ -- Auto pairs
		"windwp/nvim-autopairs",
		event = "InsertEnter",
		config = true,
		opts = { check_ts = true, map_bs = false, map_cr = false },
	},
	{
		"ellisonleao/gruvbox.nvim",
		priority = 1000,
		config = function()
			require("gruvbox").setup({
				contrast = "soft", -- Can be "hard", "soft" or empty string
				transparent_mode = true,
			})
			vim.cmd("colorscheme gruvbox")
		end,
	},
	{ --
		"numToStr/Comment.nvim",
		opts = {},
		{
			"akinsho/bufferline.nvim",
			version = "*",
			dependencies = "nvim-tree/nvim-web-devicons",
			opts = {
				options = {
					mode = "tabs",
					separator_style = "slant",
				},
			},
		},
	},
	{
		"stevearc/dressing.nvim",
		event = "VeryLazy",
	},
	{
		"lukas-reineke/indent-blankline.nvim",
		main = "ibl",
		---@module "ibl"
		---@type ibl.config
		opts = {
			scope = { enabled = true, highlight = { "Function", "Label" } },
		},
	},
	{
		"antosha417/nvim-lsp-file-operations",
		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-tree/nvim-tree.lua",
		},
		opts = {},
	},
	{
		"Civitasv/cmake-tools.nvim",
		dependencies = "nvim-lua/plenary.nvim",
		opts = {},
	},
	{ "tpope/vim-fugitive" },
	{ "tpope/vim-endwise" },
	{ "tpope/vim-eunuch" },
	{ "lepture/vim-jinja" },
	{
		"kylechui/nvim-surround",
		version = "*", -- Use for stability; omit to use `main` branch for the latest features
		event = "VeryLazy",
		opts = {},
	},
}
