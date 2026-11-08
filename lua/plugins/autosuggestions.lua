return {
  "saghen/blink.cmp",
  version = "1.*",
  dependencies = { "rafamadriz/friendly-snippets" },
  
  opts = {
    keymap = { preset = "super-tab" },
    sources = { default = { "lsp", "path", "snippets", "buffer" } },
    completion = {
      menu = {
	max_height = 4,
	draw = {
	  columns = {
	    { "label", gap = 1 },
	    { "kind_icon", "kind", gap = 1 },
	  },
	  components = {
	    label_description = { width = { max = 0 } },
	  },
	},
      },
      documentation = {
	auto_show = false,
      },
      ghost_text = { enabled = true },
    },
  },
}

