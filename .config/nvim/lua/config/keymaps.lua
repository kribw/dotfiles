-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
-- vim.g.lazydev_enabled = true
vim.keymap.set("n", "<PageUp>", "<cmd>bnext<CR>", { desc = "Go to next buffer" })
vim.keymap.set("n", "<PageDown>", "<cmd>bprevious<CR>", { desc = "Go to previous buffer" })
vim.keymap.set("n", "<leader>pv", "<cmd>Ex<CR>", { desc = "Open netrw" })
