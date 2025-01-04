require("config.lazy")

--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '
vim.opt.guicursor = ''

vim.opt.number = true
vim.opt.relativenumber = true
vim.opt.cursorline = true
vim.opt.clipboard = 'unnamedplus'
vim.opt.hlsearch = true

vim.keymap.set("n", "<space><space>x", "<cmd>source %<CR>")
vim.keymap.set("n", "<C-s>", "<cmd>wa<CR>")
vim.keymap.set("n", "<C-q>", "<cmd>q<CR>")
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<M-j>", "<cmd>cnext<CR>")
vim.keymap.set("n", "<M-k>", "<cmd>cprevious<CR>")
vim.keymap.set('n', 'J', 'mzJ`z', { desc = '' })
vim.keymap.set('v', 'J', ":m '>+1<CR>gv=gv", { desc = 'Move down selected line' })
vim.keymap.set('v', 'K', ":m '<-2<CR>gv=gv", { desc = 'Move up selected line' })
vim.keymap.set('n', '<C-d>', '<C-d>zz', { desc = 'Centralize after page down' })
vim.keymap.set('n', '<C-u>', '<C-u>zz', { desc = 'Centralize after page up' })
vim.keymap.set('n', 'n', 'nzzzv', { desc = 'Centralize after next occurency' })
vim.keymap.set('n', 'N', 'Nzzzv', { desc = 'Centralize after previous occurency' })

vim.api.nvim_create_autocmd('TextYankPost', {
    desc = 'Highlight when yanking text',
    group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
    callback = function()
        vim.highlight.on_yank()
    end,
})
