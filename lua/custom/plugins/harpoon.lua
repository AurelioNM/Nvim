return {
  'ThePrimeagen/harpoon',

  config = function()
    local mark = require 'harpoon.mark'
    local ui = require 'harpoon.ui'

    vim.keymap.set('n', 'H', mark.add_file)
    vim.keymap.set('n', '<leader>h', ui.toggle_quick_menu)
    vim.keymap.set('n', '<leader>j', ui.nav_next)
    vim.keymap.set('n', '<leader>l', ui.nav_prev)

    require('harpoon').setup {
      menu = {
        width = 90,
      },
    }
  end,
}
