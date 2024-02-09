return {
  { "craftzdog/solarized-osaka.nvim", lazy = false, priority = 1000 },
  { "rebelot/kanagawa.nvim", lazy = false, priority = 1000 },

  {
    "AlexvZyl/nordic.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("nordic").load()
    end,
  },
  { "catppuccin/nvim", name = "catppuccin", priority = 1000 },

  {
    "lazyVim/lazyVim",
    opts = {
      colorscheme = "nordic",
    },
  },
  { "sainnhe/everforest", lazy = false, priority = 1000 },
  { "sainnhe/sonokai", lazy = false, priority = 1000 },
}
