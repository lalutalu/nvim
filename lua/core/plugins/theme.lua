return {
	'Mofiqul/vscode.nvim',
	priority = 1000,
	config = function()
		local c = require('vscode.colors').get_colors()
		require('vscode').setup({
			transparent = false,
			-- Enable italic comment
			italic_comments = false,

			-- Underline `@markup.link.*` variants
			underline_links = true,

			-- Disable nvim-tree background color
			disable_nvimtree_bg = true,

			-- -- Override colors (see ./lua/vscode/colors.lua)
			color_overrides = {
				vscLineNumber = '#FFFFFF',
			}
		})
		require('vscode').load()
	end

}
