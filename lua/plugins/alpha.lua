return {
  "goolord/alpha-nvim",
  config = function()
    local alpha = require("alpha")
    local dashboard = require("alpha.themes.dashboard")

    dashboard.section.header.val = {
      " ▒▓▓██  ▒▒   ██ ▒▒▓▓██  ▐░▒▒▓▓██▌ ░░    ██ ▓██ ░▒    ██",
      "░▒   ██ ░▒   ██  ▒▒  ██    ▒▒▓     ░░  ██  ▓▓█  ░▒▌▐▓█ ",
      "░░      ░░   ▓█  ░▒  ▓█    ░▒▒      ░  ▓█  ▒▓▓  ░░▐▌▓▓ ",
      " ░ ▀▀▓▓  ░   ▓▓  ░░▒▒▓      ░▒         ▓▓  ░▒▓   ░  ▒▓ ",
      "     ▒▓      ▒▓   ░ ▒▒       ░         ▒▓   ░▒      ▒▒ ",
      "   ░░▒     ░░▒       ▒▒             ▐ ░▌     ░       ▒▒",
    }
    
    dashboard.section.buttons.val = {
      dashboard.button("e", "  New file", "<cmd>ene <BAR> startinsert<CR>"),
      dashboard.button("SPC f f", "󰈞  Find file", "<cmd>Telescope find_files<CR>"),
      dashboard.button("SPC f g", "󰊄  Find word", "<cmd>Telescope live_grep<CR>"),
      dashboard.button("SPC f b", "   Buffers", "<cmd>Telescope buffers<CR>"),
      dashboard.button("l", "  Lazy", "<cmd>Lazy<CR>"),
      dashboard.button("q", "󰅚  Quit", "<cmd>qa<CR>"),
    }

    alpha.setup(dashboard.opts)
  end,
}
