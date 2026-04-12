-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

local keymap = vim.keymap

-- General Keymaps
keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })
keymap.set("i", "<C-c>", "<ESC>", { desc = "Ctrl + c remap to Escape" })
keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" })
keymap.set("n", "x", '"_x', { desc = "Delete single character without copying into register" })
keymap.set("x", "<leader>p", '"_dP', { desc = "Paste without copying selected text into register" })
keymap.set("n", "<leader>d", '"_d', { desc = "Delete in normal mode without copying into register" })
keymap.set("v", "<leader>d", '"_d', { desc = "Delete in visual mode without copying into register" })

keymap.set("v", "J", ":m '>+1<CR>gv=gv", { desc = "Move selected text down" })
keymap.set("v", "K", ":m '<-2<CR>gv=gv", { desc = "Move selected text up" })
keymap.set("n", "J", "mzJ`z", { desc = "Append the next line to the current line" })
keymap.set("n", "<C-d>", "<C-d>zz", { desc = "Keep cursor in middle while control+d jump" })
keymap.set("n", "<C-u>", "<C-u>zz", { desc = "Keep cursor in middle while control+u jump" })
keymap.set("n", "n", "nzzzv", { desc = "Allows the search term to stay in the middle while n jump" })
keymap.set("n", "N", "Nzzzv", { desc = "Allows the search term to stay in the middle while N jump" })
keymap.set("n", "<leader>q", ":w<CR>", { desc = "Save the current file" })

keymap.set("n", "<leader>rr", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]], { desc = "Replace all occurrences of the current word under the cursor" })
keymap.set("n", "<leader>+", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- Window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })

-- Tab management
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tl", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "<leader>th", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })

-- Buffer management
keymap.set("n", "<leader>ba", "<cmd>Telescope buffers<CR>", { desc = "Show all open buffers in Telescope" })
keymap.set("n", "<leader>bl", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
keymap.set("n", "<leader>bh", "<cmd>bprev<CR>", { desc = "Go to previous buffer" })
keymap.set("n", "<leader>bx", "<cmd>bd!<CR>", { desc = "Unload buffer and clear it from the buffer list" })
keymap.set("n", "<leader>bs", "<cmd>b#<CR>", { desc = "Switch to previous buffer" })

-- Insert mode word navigation
keymap.set("i", "<ESC>b", "<C-o>b", { noremap = true, silent = true })
keymap.set("i", "<ESC>f", "<C-o>w", { noremap = true, silent = true })

-- Terminal mode
keymap.set("t", "<Esc>", "<C-\\><C-n>", { noremap = true, silent = true })
