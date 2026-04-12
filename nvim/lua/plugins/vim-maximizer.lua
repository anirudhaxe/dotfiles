return {
  "szw/vim-maximizer",
  event = "VeryLazy",
  config = function()
    vim.keymap.set("n", "<leader>sm", "<cmd>MaximizerToggle<CR>", { desc = "Maximize/minimize a split" })
  end,
}
