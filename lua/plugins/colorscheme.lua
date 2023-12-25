return {
  {
    "sainnhe/sonokai",
    init = function() -- init function runs before the plugin is loaded
      vim.g.sonokai_style = "andromeda"
      vim.g.transparent_background = 0
      vim.g.sonokai_dim_inactive_windows = 0
      vim.g.sonokai_better_performance = 1
      vim.g.sonokai_disable_terminal_colors = 1
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    opts = {
      style = "dark",
      terminal_colors = false,
      transparent = false,
      styles = {
        -- Background styles. Can be "dark", "transparent" or "normal"
        sidebars = "dark", -- style for sidebars, see below
        floats = "dark", -- style for floating windows
      },
    },
  },
  {
    "catppuccin/nvim",
    lazy = false,
    name = "catppuccin",
    config = function()
      require("catppuccin").setup({
        flavour = "macchiato",
        transparent_background = false,
        term_colors = false,
      })
    end,
  },

  -- Configure LazyVim to load a theme
  {
    "LazyVim/LazyVim",
    opts = {
      colorscheme = "sonokai",
    },
  },
}
