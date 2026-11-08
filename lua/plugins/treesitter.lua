return {
  "nvim-treesitter/nvim-treesitter",
  branch = "main",
  lazy = false,
  build = ":TSUpdate",
  config = function()
    require("nvim-treesitter").setup({})

    require("nvim-treesitter").install({ "lua", "c", "cpp", "vim", "python", "query" })

    vim.api.nvim_create_autocmd("FileType", {
      pattern = { "lua", "c", "cpp", "vim", "python", "query" },
      callback = function()
        vim.treesitter.start()
        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
