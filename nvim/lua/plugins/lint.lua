return {
	"mfussenegger/nvim-lint",
	config = function()
		require("lint").linters_by_ft = {
			cpp = { "cpplint", "trivy" },
			c = { "trivy" },
			python = { "bandit" },
			make = { "checkmake" },
			cmake = { "cmakelint" },
		}
		vim.api.nvim_create_autocmd({ "BufWritePost" }, {
			callback = function()
				require("lint").try_lint()
			end,
		})
	end,
}
