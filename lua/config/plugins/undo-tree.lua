return {
  {
    'mbbill/undotree',

    config = function()
      vim.g.undotree_WindowLayout = 1 -- Options are 1, 2, 3, 4
      vim.g.undotree_SplitWidth = 50

      vim.keymap.set('n', '<leader>u', vim.cmd.UndotreeToggle)
    end,
  }
}
