-- Remap leader to space
vim.g.mapleader = " "
vim.g.maplocalleader = ","

-- Tab configuration set tabstop 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

-- Line numbers
vim.wo.number = true

-- Exit input mode with a combination of keys instead of <ESC>
vim.api.nvim_exec('inoremap jk <ESC>', false)
vim.api.nvim_exec('inoremap ол <ESC>', false)

-- Insert new-line without entering insert mode
vim.api.nvim_exec('nnoremap <Leader>o o<ESC>', false)
vim.api.nvim_exec('nnoremap <Leader>O O<ESC>', false)

-- Syntax highlighting
vim.api.nvim_exec('syntax on', false)

-- Mappings
vim.api.nvim_set_keymap('n', '<Leader>n', ':NERDTreeFocus<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-n>', ':NERDTreeToggle<CR>', {noremap = true})
vim.api.nvim_set_keymap('n', '<C-f>', ':NERDTreeFind<CR>', {noremap = true})
