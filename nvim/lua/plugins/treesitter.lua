return {
	{
		"nvim-treesitter/nvim-treesitter",
		build = ":TSUpdate",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			local configs = require("nvim-treesitter.configs")
			configs.setup({
				ensure_installed = {
					"c",
					"lua",
					"vim",
					"vimdoc",
					"query",
					"javascript",
					"html",
					"arduino",
					"asm",
					"awk",
					"bash",
					"c_sharp",
					"cpp",
					"css",
					"csv",
					"cmake",
					"cuda",
					"diff",
					"disassembly",
					"desktop",
					"dockerfile",
					"glsl",
					"go",
					"gpg",
					"git_config",
					"gitignore",
					"http",
					"ini",
					"java",
					"json",
					"make",
					"nasm",
					"objdump",
					"passwd",
					"php",
					"python",
					"regex",
					"printf",
					"sql",
					"ssh_config",
					"strace",
					"typescript",
					"xml",
					"nginx",
				},
				sync_install = false,
				auto_install = true,
				highlight = { enable = true },
				indent = { enable = true },
				autotag = { enable = true },
				incremental_selection = {
					enable = true,
					keymaps = {
						init_selection = "gnn", -- set to `false` to disable one of the mappings
						node_incremental = "grn",
						scope_incremental = "grc",
						node_decremental = "grm",
					},
				},
				textobjects = {
					select = {
						enable = true,
						lookahead = true,
						keymaps = {
							["af"] = "@function.outer",
							["if"] = "@function.inner",
							["ac"] = "@class.outer",
							["ic"] = { query = "@class.inner", desc = "Select inner part of a class region" },
							["as"] = { query = "@scope", query_group = "locals", desc = "Select language scope" },
						},
						selection_modes = {
							["@parameter.outer"] = "v", -- charwise
							["@function.outer"] = "V", -- linewise
							["@class.outer"] = "<c-v>", -- blockwise
						},
						include_surrounding_whitespace = true,
					},
				},
			})
			vim.opt.foldmethod = "expr"
			vim.opt.foldexpr = "v:lua.vim.treesitter.foldexpr()"
		end,
	},
	{
		"nvim-treesitter/nvim-treesitter-textobjects",
	},
}
