-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })

vim.keymap.set("n", "sx", require("substitute.exchange").operator, { noremap = true, desc = "Exchange" })
vim.keymap.set("n", "sxx", require("substitute.exchange").line, { noremap = true, desc = "Exchange line" })
vim.keymap.set("x", "X", require("substitute.exchange").visual, { noremap = true, desc = "Exchange" })
vim.keymap.set("n", "sxc", require("substitute.exchange").cancel, { noremap = true, desc = "Cancel exchange" })
