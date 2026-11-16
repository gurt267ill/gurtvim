local function enable_transparency()
  vim.api.nvim_set_hl(0, "Normal", { bg = "none" })
end
return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
	variant = "moon",
	dark_variant = "moon",
      })
    vim.cmd("colorscheme rose-pine-moon")
      -- enable_transparency()
  end
  },
  {
    "nvim-lualine/lualine.nvim",
    dependencies = {
      "nvim-tree/nvim-web-devicons",
    },
    opts = {
      theme = 'rose-pine',
    }
  }
}
