-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "move window left" })
vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "move window right" })
vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "move window up" })
vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "move window down" })
