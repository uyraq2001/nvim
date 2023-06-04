vim.g.netrw_liststyle = 3
vim.g.netrw_browse_split = 0
vim.g.netrw_banner = 0
vim.g.netrw_winsize = 25

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

vim.opt.termguicolors = true

vim.opt.scrolloff = 8
vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.opt.colorcolumn = "80,100,120"

vim.o.list = true
vim.o.listchars = 'tab:> ,extends:›,precedes:‹,trail:·,lead:·,nbsp:⎵'

