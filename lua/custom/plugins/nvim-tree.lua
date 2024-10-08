return {
  'nvim-tree/nvim-tree.lua',
  version = '*',
  lazy = false,
  dependencies = {
    'nvim-tree/nvim-web-devicons',
  },

  keys = {
    { '<leader>1', '<cmd>NvimTreeToggle<CR>', desc = 'Toggle NvimTree' },
  },

  config = function()
    require('nvim-tree').setup {}
  end,
}
