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
}
