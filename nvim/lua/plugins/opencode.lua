return {
	{
		"NickvanDyke/opencode.nvim",
		version = "*",
		dependencies = {
			{
				"folke/snacks.nvim",
				optional = true,
				opts = {
					input = {},
					picker = {
						actions = {
							opencode_send = function(...)
								return require("opencode").snacks_picker_send(...)
							end,
						},
						win = {
							input = {
								keys = {
									["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
								},
							},
						},
					},
				},
			},
		},
		config = function()
			vim.g.opencode_opts = {}

			vim.o.autoread = true

			vim.keymap.set({ "n", "x" }, "<leader>oa", function()
				require("opencode").ask("@this: ", { submit = true })
			end, { desc = "Ask opencode" })

			vim.keymap.set({ "n", "x" }, "<leader>os", function()
				require("opencode").select()
			end, { desc = "Execute opencode action..." })

			vim.keymap.set({ "n", "x" }, "<leader>o-", function()
				require("opencode").prompt("@this")
			end, { desc = "Add to opencode" })

			vim.keymap.set("n", "<leader>ot", function()
				require("opencode").toggle()
			end, { desc = "Toggle opencode" })

			vim.keymap.set("n", "<leader>ou", function()
				require("opencode").command("session.half.page.up")
			end, { desc = "opencode half page up" })

			vim.keymap.set("n", "<leader>od", function()
				require("opencode").command("session.half.page.down")
			end, { desc = "opencode half page down" })
		end,
	},
}
