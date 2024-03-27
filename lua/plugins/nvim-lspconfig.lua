return {
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        -- terraformls = {},
        marksman = {},
      },
      inlay_hints = { enabled = false },
    },
  },
}
