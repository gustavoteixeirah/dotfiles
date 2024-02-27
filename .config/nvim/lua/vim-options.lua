vim.cmd("set scrolloff=8")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=4 softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set incsearch")
vim.cmd("set clipboard=unnamedplus")

vim.g.mapleader = " "

vim.keymap.set('i', 'jk', '<esc>')
vim.keymap.set('n', '<leader>pv', ':Vex<CR>')
