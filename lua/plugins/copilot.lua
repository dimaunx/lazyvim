return {
  {
    "zbirenbaum/copilot.lua",
    cmd = "Copilot",
    build = ":Copilot auth",
    opts = {
      suggestion = { enabled = true, auto_trigger = false },
      panel = {
        enabled = true,
        keymap = {
          open = "<M-c>",
        },
        layout = {
          position = "right", -- | top | left | right
          ratio = 0.4,
        },
      },
      filetypes = {
        markdown = true,
        go = true,
        python = true,
        terraform = true,
        help = true,
      },
    },
  },
}
