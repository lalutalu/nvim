-- vim.cmd [[ colorscheme base16-solarflare ]]

local c = require('vscode.colors').get_colors()
require('vscode').setup({
    transparent = false,

    italic_comments = false,

    disable_nvimtree_bg = false,

    color_overrides = {
    },

    group_overrides = {
    }
})
require('vscode').load()
