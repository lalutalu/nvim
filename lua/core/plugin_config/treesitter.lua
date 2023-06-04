require'nvim-treesitter.configs'.setup {
  ensure_installed = { "lua", "vim", "html", "css", "javascript"},
  sync_install = false,
  auto_install = true,
  highlight = {
    enable = true,
  },
}
