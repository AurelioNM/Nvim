-- Bootstrap lazy.nvim
local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not (vim.uv or vim.loop).fs_stat(lazypath) then
    local lazyrepo = "https://github.com/folke/lazy.nvim.git"
    local out = vim.fn.system({ "git", "clone", "--filter=blob:none", "--branch=stable", lazyrepo, lazypath })
    if vim.v.shell_error ~= 0 then
        vim.api.nvim_echo({
            { "Failed to clone lazy.nvim:\n", "ErrorMsg" },
            { out,                            "WarningMsg" },
            { "\nPress any key to exit..." },
        }, true, {})
        vim.fn.getchar()
        os.exit(1)
    end
end

-- Put lazy into the runtimepath for neovim!
vim.opt.runtimepath:prepend(lazypath)

vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

require("lazy").setup({
    rocks = {
        hererocks = true
    },
    spec = {
        {
            "folke/tokyonight.nvim",
            priority = 1000,
            config = function()
                vim.cmd.colorscheme "tokyonight-moon"

                -- Transparancy config
                local groups = {
                    'Normal', 'NormalFloat', 'SignColumn', 'VertSplit',
                    'NormalNC', 'StatusLine', 'StatusLineNC',
                    'NvimTreeNormal', 'NvimTreeVertSplit',
                    'NvimTreeNormalNC', 'NvimTreeEndOfBuffer',
                    'TelescopeBorder', 'TelescopeNormal',
                    'TelescopePromptNormal', 'TelescopeResultsNormal', 'TelescopePreviewNormal',
                    'TelescopePromptBorder', 'TelescopeResultsBorder', 'TelescopePreviewBorder',
                }
                for _, group in ipairs(groups) do
                    vim.api.nvim_set_hl(0, group, { bg = 'NONE' })
                end
                vim.api.nvim_set_hl(0, 'WinSeparator', { bg = 'NONE', fg = '#565f89' })
            end
        },
        { import = "config.plugins" },
    },
    change_detection = {
        -- automatically check for config file changes and reload the ui
        enabled = false,
        notify = false, -- get a notification when changes are found
    },
})
