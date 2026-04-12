return {
	{
		"stevearc/conform.nvim",
		optional = true,
		opts = {
			formatters = {
				pg_format = {
					prepend_args = {
						"--comma-break",
						"--spaces",
						"4",
					},
				},
			},
			formatters_by_ft = {
				javascript = { "prettier" },
				typescript = { "prettier" },
				javascriptreact = { "prettier" },
				typescriptreact = { "prettier" },
				css = { "prettier" },
				html = { "prettier" },
				json = { "prettier" },
				yaml = { "prettier" },
				markdown = { "prettier" },
				lua = { "stylua" },
				python = { "isort", "black" },
				sql = { "pg_format" },
				graphql = { "prettier" },
			},
		},
		keys = {
			{
				"<leader>mp",
				function()
					require("conform").format({
						lsp_fallback = true,
						async = false,
						timeout_ms = 1000,
					})
				end,
				mode = { "n", "v" },
				desc = "Format file or range (in visual mode)",
			},
		},
	},
}
