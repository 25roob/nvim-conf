-- This file can be loaded by calling `lua require('plugins')` from your init.vim

-- Only required if you have packer configured as `opt`
vim.cmd [[packadd packer.nvim]]

return require('packer').startup(function(use)
    -- Packer can manage itself
    use 'wbthomason/packer.nvim'

    use {
        'nvim-telescope/telescope.nvim', tag = '0.1.8',
      -- or                            , branch = '0.1.x',
        requires = { {'nvim-lua/plenary.nvim'} }
    }

-- themes
    use { "catppuccin/nvim", as = "catppuccin" }
    use { "HiPhish/rainbow-delimiters.nvim" }
    use ('nvim-treesitter/nvim-treesitter', { run = ':TSUpdate'})
    use ('nvim-treesitter/playground')

    use "nvim-lua/plenary.nvim" -- don't forget to add this one if you don't have it yet!
    use {
        "ThePrimeagen/harpoon",
        branch = "harpoon2",
        requires = { {"nvim-lua/plenary.nvim"} }
    }

    use 'mbbill/undotree'

    use 'tpope/vim-fugitive'

    use({'neovim/nvim-lspconfig'})
    use({'hrsh7th/nvim-cmp'})
    use({'hrsh7th/cmp-nvim-lsp'})
    use {
        "mason-org/mason.nvim",
        "mason-org/mason-lspconfig.nvim",
    }

    use 'eandrju/cellular-automaton.nvim'

    use 'gpanders/nvim-parinfer'

    use 'Olical/conjure'
    use {
        'clojure-vim/vim-jack-in',
        'radenling/vim-dispatch-neovim',

        -- editing
        'guns/vim-sexp',
        'tpope/vim-sexp-mappings-for-regular-people',
        'tpope/vim-repeat',
        'tpope/vim-surround',
    }

    use {
        "AmeerTaweel/todo.nvim",
        requires = "nvim-lua/plenary.nvim",
    }

    use "Olical/nfnl"
    use "Olical/aniseed"
    use "Olical/fennel.vim"

    use {
        'S1M0N38/love2d.nvim',
        ft = "lua"
    }
end)


