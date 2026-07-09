return {
  "NickvanDyke/opencode.nvim",
  version = "*", -- Latest stable release
  -- dependencies = {
  -- 	{
  -- 		-- `snacks.nvim` integration is recommended, but optional
  -- 		---@module "snacks" <- Loads `snacks.nvim` types for configuration intellisense
  -- 		"folke/snacks.nvim",
  -- 		optional = true,
  -- 		opts = {
  -- 			input = {}, -- Enhances `ask()`
  -- 			picker = { -- Enhances `select()`
  -- 				actions = {
  -- 					opencode_send = function(...)
  -- 						return require("opencode").snacks_picker_send(...)
  -- 					end,
  -- 				},
  -- 				win = {
  -- 					input = {
  -- 						keys = {
  -- 							["<a-a>"] = { "opencode_send", mode = { "n", "i" } },
  -- 						},
  -- 					},
  -- 				},
  -- 			},
  -- 		},
  -- 	},
  -- },
  config = function()
    ---@type opencode.Opts
    vim.g.opencode_opts = {
      -- Your configuration, if any; goto definition on the type for details
    }

    vim.o.autoread = true -- Required for `vim.g.opencode_opts.events.reload`

    -- Recommended/example keymaps.
    vim.keymap.set({ "n", "x" }, "<leader>oa", function()
      require("opencode").ask("@this: ")
    end, { desc = "Ask OpenCode…" })

    vim.keymap.set({ "n", "x" }, "<leader>os", function()
      require("opencode").select()
    end, { desc = "Execute OpenCode action…" })

    vim.keymap.set({ "n", "x" }, "<leader>o-", function()
      return require("opencode").operator("@this ")
    end, { desc = "Add to OpenCode", expr = true })

    vim.keymap.set("n", "<leader>ou", function()
      require("opencode").command("session.half.page.up")
    end, { desc = "Scroll OpenCode up" })

    vim.keymap.set("n", "<leader>od", function()
      require("opencode").command("session.half.page.down")
    end, { desc = "Scroll OpenCode down" })

    -- You may want these if you stick with the opinionated "<C-a>" and "<C-x>" above — otherwise consider "<leader>o".
    -- vim.keymap.set("n", "+", "<C-a>", { desc = "Increment", noremap = true })
    -- vim.keymap.set("n", "-", "<C-x>", { desc = "Decrement", noremap = true })
  end,
}
