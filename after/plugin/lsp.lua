local lsp_zero = require('lsp-zero')
vim.opt.signcolumn = 'yes'

lsp_zero.on_attach(function(client, bufnr)
  -- see :help lsp-zero-keybindings
  -- to learn the available actions
  lsp_zero.default_keymaps({buffer = bufnr})

  vim.keymap.set("n", "K",  function() vim.lsp.buf.hover() end,          { desc = '[K] Hover info', buffer = bufnr, remap = false })
    vim.keymap.set("n", "gd", function() vim.lsp.buf.definition() end,     { desc = '[G]o to [d]efinition',buffer = bufnr, remap = false })
  vim.keymap.set("n", "gD", function() vim.lsp.buf.declaration() end,    { desc = '[G]o to [D]eclaration',buffer = bufnr, remap = false })
end)


require('mason').setup({})
require('mason-lspconfig').setup({
  -- Replace the language servers listed here 
  -- with the ones you want to install
  ensure_installed = {
	  'tsserver', 'rust_analyzer', 'bashls',
	  'cssls', 'clojure_lsp',
	  'dockerls', 'elixirls', 'gopls',
	  'html', 'jsonls', 'jdtls', 'lua_ls',
	  'pyright', 'solargraph', 'tailwindcss',
  },
  handlers = {
    lsp_zero.default_setup,
  },
})


