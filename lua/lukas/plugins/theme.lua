return {
  'Mofiqul/vscode.nvim',
  priority = 1000,
  config = function()
    local c = require('vscode.colors').get_colors()
    require('vscode').setup({
        transparent = false,
        italic_comments = false,
        disable_nvimtree_bg = false,
        group_overrides = {
            Cursor = { fg=c.vscDarkBlue, bg=c.vscLightGreen, bold=true },
        }
    })
    require('vscode').load()
  end
}
