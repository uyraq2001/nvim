-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.colorcolumn = "80,100,120"
vim.opt.conceallevel = 1
vim.opt.spelllang = { "en", "ru" }

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.api.nvim_exec("language en_US", true)

vim.filetype.add({
  extension = {
    tpp = "cpp",
  },
})
