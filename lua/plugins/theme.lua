return {
	{
		'Mofiqul/vscode.nvim',
		priority = 1000,
		config = function()
			local c = require('vscode.colors').get_colors()
			require('vscode').setup({
				transparent = false,
				italic_comments = true,
				underline_links = true,
				disable_nvimtree_bg = false,
				color_overrides = {
					-- vscLineNumber = '#FFFFFF',
				},

				group_overrides = {
					-- Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
				}
			})
			-- vim.cmd.colorscheme "vscode"
		end
	},
	{
		"EdenEast/nightfox.nvim",
		priority = 1000,
		config = function()
			require('nightfox').setup({
				options = {
					styles = {
						comments = "italic",
						keywords = "bold",
						types = "italic,bold",
					}
				}
			})
			vim.cmd("colorscheme duskfox")
		end
	},
	{
		"ellisonleao/gruvbox.nvim",
		-- priority = 1000 , 
		config = function()
			require("gruvbox").setup({
				terminal_colors = true,
				undercurl = true,
				underline = true,
				bold = true,
				italic = {
					strings = false,
					emphasis = false,
					comments = true,
					operators = false,
					folds = false,
				},
			})
			-- vim.cmd("colorscheme gruvbox")
		end
	}
}
