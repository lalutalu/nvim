return {
  'nvim-telescope/telescope.nvim', tag = '0.1.2',
  dependencies = { 'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons'},
  config = function()
    require('telescope').setup{
      defaults = {
	layout_strategy = 'vertical',
	path_display = { 'smart' },
      },
    }
    vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
    vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>')
    vim.keymap.set('n', '<leader>fs', '<cmd>Telescope live_grep<cr>')
    vim.keymap.set('n', '<leader>fg', '<cmd>Telescope grep_string<cr>')
  end
}
