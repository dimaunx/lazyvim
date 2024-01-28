return {
  {
    "sainnhe/sonokai",
    init = function() -- init function runs before the plugin is loaded
      vim.g.sonokai_style = "andromeda"
      vim.g.transparent_background = 0
      vim.g.sonokai_dim_inactive_windows = 1
      vim.g.sonokai_better_performance = 1
      vim.g.sonokai_disable_terminal_colors = 1
      vim.g.sonokai_current_word = "bold"
      vim.g.sonokai_show_eob = 1
    end,
  },
  {
    "folke/tokyonight.nvim",
    lazy = false,
    priority = 1000,
    config = function()
      require("tokyonight").setup({
        style = "moon", -- The theme comes in three styles, `storm`, `moon`, a darker variant `night` and `day`
        light_style = "day", -- The theme is used when the background is set to light
        transparent = false, -- Enable this to disable setting the background color
        terminal_colors = true, -- Configure the colors used when opening a `:terminal` in [Neovim](https://github.com/neovim/neovim)
        styles = {
          -- Background styles. Can be "dark", "transparent" or "normal"
          sidebars = "dark", -- style for sidebars, see below
          floats = "dark", -- style for floating windows
        },
        sidebars = { "qf", "help" }, -- Set a darker background on sidebar-like windows. For example: `["qf", "vista_kind", "terminal", "packer"]`
        hide_inactive_statusline = false, -- Enabling this option, will hide inactive statuslines and replace them with a thin border instead. Should work with the standard **StatusLine** and **LuaLine**.
        dim_inactive = false, -- dims inactive windows
        lualine_bold = true, -- When `true`, section headers in the lualine theme will be bold
      })
    end,
  },
  {
    "catppuccin/nvim",
    lazy = true,
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
      colorscheme = "tokyonight",
    },
  },
}
