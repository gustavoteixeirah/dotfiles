vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set tabstop=4 softtabstop=4")
vim.cmd("set shiftwidth=4")
vim.cmd("set expandtab")
vim.cmd("set smartindent")
vim.cmd("set incsearch")
vim.g.mapleader = " "
vim.keymap.set("i", "jk", "<esc>")
vim.keymap.set("n", "<leader>pv", ":Vex<CR>")
vim.opt.guicursor = "i:block"
vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300
vim.opt.swapfile = false
