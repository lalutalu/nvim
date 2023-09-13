return {
  'Mofiqul/vscode.nvim',
  config = function ()
    require('vscode').setup({
      transparent = false,
      italic_comments = false,
      disable_nvimtree_bg = false,
      color_overrides = {
	vscLineNumber = '#FFFFFF',
      },
    })
    require('vscode').load()
  end
}
