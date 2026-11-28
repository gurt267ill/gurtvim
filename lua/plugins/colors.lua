return {
  {
    "rose-pine/neovim",
    name = "rose-pine",
    priority = 1000,
    config = function()
      require("rose-pine").setup({
	variant = "moon",
	dark_variant = "moon",
	styles = {
	  transparency = true,
	},
      })

    vim.cmd("colorscheme rose-pine-moon")
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
