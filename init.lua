-- Modules
require "config/plugins"
require "config/completion"
require "config/lsp"
require "config/airline_powerline"
require "config/key_bindings"

require'lspconfig'.clojure_lsp.setup{}

-- Colorscheme
vim.cmd('colorscheme nord')

