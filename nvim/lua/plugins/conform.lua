return {
	"stevearc/conform.nvim",
	opts = {
		formatters_by_ft = {
			lua = { "stylua" },
			cpp = { "clang-format" },
			c = { "clang-format" },
			python = { "isort", "black" },
			javascript = { "prettier" },
			css = { "prettier" },
			html = { "prettier" },
			markdown = { "prettier" },
			typescript = { "prettier" },
			json = { "prettier" },
			htmldjango = { "prettier" },
			yaml = { "prettier" },
			sql = { "sqlfluff" },
			jinja = { "djlint" },
			scss = { "prettier" },
		},
		format_on_save = {
			-- These options will be passed to conform.format()
			timeout_ms = 1000,
			lsp_format = "fallback",
		},
	},
}
