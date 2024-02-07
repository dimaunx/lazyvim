return {
  {
    "petertriho/nvim-scrollbar",
    event = "VeryLazy",
    enabled = true,
    config = function()
      require("scrollbar").setup()
    end,
  },
}
