require('mason').setup()
require('mason-lspconfig').setup({
  ensure_installed = { 'lua_ls', 'emmet_ls', 'tsserver'}
})

local on_attach = function(_,_)
  if client.server_capabilities.documentFormattingProvider then
  	vim.api.nvim_create_autocmd("BufWritePre", {
	  group = vim.api.nvim_create_augroup("Format", {clear = true}),
	  callback = function () vim.lsp.buf.formatting_seq_sync() end
	})
  end
  vim.keymap.set('n','<leader>rn', vim.lsp.buf.rename, {})
  vim.keymap.set('n','<leader>ca', vim.lsp.buf.code_action, {})
  vim.keymap.set('n','gd', vim.lsp.buf.definition, {})
  vim.keymap.set('n','gi', vim.lsp.buf.implementation, {})
  vim.keymap.set('n','gr', require('telescope.builtin').lsp_references, {})
  vim.keymap.set('n','K', vim.lsp.buf.hover, {})
end

local capabilities = require('cmp_nvim_lsp').default_capabilities()

require('lspconfig').lua_ls.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}

require('lspconfig').emmet_ls.setup({
    on_attach = on_attach,
    capabilities = capabilities,
    filetypes = { "css", "html", "sass", "scss" },
    init_options = {
      html = {
        options = {
          ["bem.enabled"] = true,
        },
      },
    }
})

require('lspconfig').tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
}
