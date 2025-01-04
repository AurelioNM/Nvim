return {
    {
        'nvim-telescope/telescope.nvim',
        tag = '0.1.8',

        dependencies = {
            'nvim-lua/plenary.nvim',
            { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' }
        },

        config = function()
            require('telescope').setup {
                extensions = {
                    fzf = {}
                }
            }

            require('telescope').load_extension('fzf')
            -- require('telescope').load_extension('ui-select')

            local builtin = require('telescope.builtin')

            vim.keymap.set('n', '<leader>sg', builtin.live_grep, { desc = '[S]earch by [G]rep' })
            vim.keymap.set('n', '<leader><leader>', builtin.find_files, { desc = '[S]earch [F]iles' })
            vim.keymap.set('n', '<leader>nvi', function()
                builtin.find_files {
                    cmd = vim.fn.stdpath('config')
                }
            end, { desc = '[S]earch [F]iles' })
        end
    }
}
