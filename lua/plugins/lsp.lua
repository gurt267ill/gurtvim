return {
  {
    'neovim/nvim-lspconfig',
    dependencies = {
      { 'williamboman/mason.nvim', config = true },
      'williamboman/mason-lspconfig.nvim',
    },
    config = function()
      local lspconfig = require('lspconfig'),

      require("mason").setup()
      require("mason-lspconfig").setup({
	automatic_enable = true,
	})

	vim.lsp.config("lua_ls", {
	  capabilities = require("cmp_nvim_lsp").default_capabilities(),
	  settings = {
	    Lua = { diagnostics = { globals = { "vim" } } },
	  },
	})
    end,
  },

  -- Fast, modern autocompletion engine
  {
    'Saghen/blink.cmp',
    version = '*',
    opts = {
      keymap = { preset = 'default' },
      sources = {
        default = { 'lsp', 'path', 'snippets', 'buffer' },
      },
    },
  },
},

vim.diagnostic.config({
  virtual_text = { prefix = "●", spacing = 2 },
  signs = {
    text = {
      [vim.diagnostic.severity.ERROR] = "",
      [vim.diagnostic.severity.WARN]  = "",
      [vim.diagnostic.severity.INFO]  = "",
      [vim.diagnostic.severity.HINT]  = "",
    },
  },
  underline = true,
  update_in_insert = true,
  severity_sort = true,
  float = { border = "rounded", source = true },
})
