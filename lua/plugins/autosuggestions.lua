return {
  "saghen/blink.cmp",
  version = "1.*", -- uses prebuilt binaries, no Rust needed
  dependencies = { "rafamadriz/friendly-snippets" },
  
  opts = {
    keymap = { preset = "super-tab" },
    sources = { default = { "lsp", "path", "snippets", "buffer" } },
    completion = {
      menu = {
	max_height = 4, -- default is 10; lower if you want it tighter
	draw = {
	  columns = {
	    { "label", gap = 1 },
	    { "kind_icon", "kind", gap = 1 },
	  },
	  -- drop the long signature column:
	  components = {
	    label_description = { width = { max = 0 } },
	  },
	},
      },
      documentation = {
	auto_show = false, -- press <C-space> to toggle docs instead
      },
      ghost_text = { enabled = true },
    },
  },
}

