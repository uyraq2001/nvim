vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.termguicolors = true

vim.opt.nu = true
vim.opt.relativenumber = true

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true
vim.opt.smartindent = true
vim.opt.wrap = false

vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.cache/nvim/undodir"
vim.opt.undofile = true
vim.opt.directory = os.getenv("HOME") .. "/.cache/nvim/swapdir"
vim.opt.swapfile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.scrolloff = 5
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80,100,120"
vim.wo.cursorline = true

vim.o.list = true
vim.o.listchars = 'tab:> ,extends:›,precedes:‹,trail:·,lead:·,nbsp:⎵'

vim.api.nvim_create_autocmd("FileType", { pattern = "tex", command = "setlocal shiftwidth=2 tabstop=2" })
vim.api.nvim_create_autocmd("FileType", { pattern = "nix", command = "setlocal shiftwidth=2 tabstop=2" })
