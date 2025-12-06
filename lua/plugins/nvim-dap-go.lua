return {
  {
    "leoluz/nvim-dap-go",
    dependencies = "mfussenegger/nvim-dap",
    config = function()
      require("dap-go").setup({
        delve = {
          path = "/opt/homebrew/bin/dlv",
        },
      })
    end,
    -- stylua: ignore
    keys = {
      { "<F7>", function() require("dap").step_into() end, desc = "Step Into" },
      { "<F8>", function() require("dap").step_over() end, desc = "Step Over" },
      { "<F9>", function() require("dap").continue() end, desc = "Continue" },
    },
  },
}
