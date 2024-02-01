return {
  {
    "fedepujol/move.nvim",
    lazy = false,
    enabled = true,
    config = function()
      require("move").setup({})
    end,
  },
}
