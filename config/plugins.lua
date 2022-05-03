local fn = vim.fn

-- Install packer if not exists in system
local install_path = fn.stdpath('data')..'/site/pack/packer/start/packer.nvim'
if fn.empty(fn.glob(install_path)) > 0 then
  packer_bootstrap = fn.system({'git', 'clone', '--depth', '1', 'https://github.com/wbthomason/packer.nvim', install_path})
end


-- Setup packer plugins
return require('packer').startup(function(use)
    -- Packer itself
    use 'wbthomason/packer.nvim'

    -- Vim airline
    use 'vim-airline/vim-airline'
    use 'vim-airline/vim-airline-themes'

    -- File navigation
    use 'preservim/nerdtree'

    use 'arcticicestudio/nord-vim'

    -- Tree-sitter parsing for syntax highlight
    use {'nvim-treesitter/nvim-treesitter', run = ':TSUpdate'}

    -- Completion and linting
    use 'neovim/nvim-lspconfig'
    use 'hrsh7th/vim-vsnip'
    use 'hrsh7th/vim-vsnip-integ'
    use 'hrsh7th/nvim-cmp'
    use 'hrsh7th/cmp-nvim-lsp'
    use 'hrsh7th/cmp-path'
    use 'hrsh7th/cmp-buffer'

    -- Rust configuration
    use 'simrat39/rust-tools.nvim'

    -- Clojure configuration
    use 'Olical/conjure'

    -- Go configuration
    use 'fatih/vim-go'

    if packer_bootstrap then
        require('packer').sync()
    end
end);

