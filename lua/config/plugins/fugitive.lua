return {
  {
    'tpope/vim-fugitive',
    vim.keymap.set('n', '<leader>gs', vim.cmd.Git, { desc = '[G]it [S]tatus' }),
    vim.keymap.set('n', '<leader>gc', '<cmd>Git commit --verbose<CR>', { desc = '[G]it [C]ommit' }),
    vim.keymap.set('n', '<leader>gac', '<cmd>Git add . | Git commit --verbose<CR>', { desc = '[G]it [A]dd and [C]ommit' }),
  }
}
