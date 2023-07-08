local ensure_packer = function()
    local fn = vim.fn
    local install_path = fn.stdpath('data') .. '/site/pack/packer/start/packer.nvim'
    if fn.empty(fn.glob(install_path)) > 0 then
        fn.system({ 'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path })
        vim.cmd [[packadd packer.nvim]]
        return true
    end
    return false
end

local packer_bootstrap = ensure_packer()

return require('packer').startup(function(use)
    use 'wbthomason/packer.nvim'
    use 'nvim-lualine/lualine.nvim'
    use {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.1',
        requires = { { 'nvim-lua/plenary.nvim' } }
    }
    use(
        'nvim-treesitter/nvim-treesitter',
        { run = ':TSUpdate' }
    )
    use('ggandor/leap.nvim')
    use('powerman/vim-plugin-ruscmd')
    use('mbbill/undotree')
    use('tpope/vim-fugitive')
    use('nvim-tree/nvim-tree.lua')
    use('cappyzawa/trim.nvim')
    use('numToStr/Comment.nvim')

    use({
        "kdheepak/lazygit.nvim",
        requires = { "nvim-lua/plenary.nvim" }
    })

    use {
        'VonHeikemen/lsp-zero.nvim',
        branch = 'v2.x',
        requires = {
            { 'neovim/nvim-lspconfig' },
            {
                'williamboman/mason.nvim',
                run = function()
                    vim.cmd('MasonUpdate')
                end
            },
            { 'williamboman/mason-lspconfig.nvim' },

            { 'hrsh7th/nvim-cmp' },
            { 'hrsh7th/cmp-nvim-lsp' },
            { 'L3MON4D3/LuaSnip' },
        }
    }

    if packer_bootstrap then
        require('packer').sync()
    end
end)
