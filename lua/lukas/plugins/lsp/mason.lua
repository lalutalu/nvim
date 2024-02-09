return {
  'williamboman/mason.nvim',
  dependencies = {'williamboman/mason-lspconfig.nvim'},
  config = function()
        -- import mason
    local mason = require("mason")

    local mason_lspconfig = require("mason-lspconfig")

    -- import mason-null-ls
    -- local mason_null_ls = require("mason-null-ls")

    -- enable mason and configure icons
    mason.setup({
      ui = {
        icons = {
            package_installed = "✓",
            package_pending = "➜",
            package_uninstalled = "✗"
        }
      }
    })

    mason_lspconfig.setup({
      ensure_installed = {
        "tsserver",
        "html",
        "cssls",
        "lua_ls",
        "emmet_ls",
	"bicep",
      },
      -- auto-install configured servers (with lspconfig)
      automatic_installation = true, -- not the same as ensure_installed
    })

    -- mason_null_ls.setup({
    --   -- list of formatters & linters for mason to install
    --   ensure_installed = {
    --     "prettier", -- ts/js formatter
    --     "stylua", -- lua formatter
    --     "eslint_d", -- ts/js linter
    --   },
    --   -- auto-install configured servers (with lspconfig)
    --   -- automatic_installation = true,
    -- })
  end,
}
