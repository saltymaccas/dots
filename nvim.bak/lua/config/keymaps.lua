local map = vim.keymap.set

map({ "n" }, "}", "<cmd>bnext<cr>")
map({ "n" }, "{", "<cmd>bprevious<cr>")

vim.keymap.del("n", "<Space>l")
vim.keymap.del("n", "<Space>L")
