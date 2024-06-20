return {
	'Mofiqul/vscode.nvim',
	config = function()
local c = require('vscode.colors').get_colors()
require('vscode').setup({
    transparent = false,
    italic_comments = true,
    underline_links = true,
			disable_nvimtree_bg = false,
    color_overrides = {
        vscLineNumber = '#FFFFFF',
    },

    group_overrides = {
        Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
    }
})
vim.cmd.colorscheme "vscode"
	end
}
