return {
  'nvim-telescope/telescope.nvim',
  branch = '0.1.x',
  dependencies = {
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons',
  },
  config = function()
require('telescope').setup{
defaults = {
  layout_strategy = 'vertical',
  path_display = { 'smart' },
},
}
    vim.keymap.set('n', '<leader>ff', '<cmd>Telescope find_files<cr>')
    vim.keymap.set('n', '<C-f>', '<cmd>Telescope live_grep<cr>')
    vim.keymap.set('n', '<leader>fr', '<cmd>Telescope oldfiles<cr>')
  end
}
