return {
	{
		"mason.nvim",
		opts = {
			ensure_installed = {
				"stylua",
				"shellcheck",
				"shfmt",
				"prettier",
				"isort",
				"black",
				"pylint",
				"eslint_d",
				"pgformatter",
			},
		},
	},
	{
		"mason-lspconfig.nvim",
		opts = {
			ensure_installed = {
				"ts_ls",
				"terraformls",
				"tflint",
				"gopls",
				"html",
				"cssls",
				"jsonls",
				"yamlls",
				"bashls",
				"dockerls",
				"tailwindcss",
				"lua_ls",
				"prismals",
				"gh_actions_ls",
				"graphql",
				"postgres_lsp",
			},
		},
	},
}
