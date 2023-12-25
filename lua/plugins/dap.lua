return {
  {
    "mfussenegger/nvim-dap",

  -- stylua: ignore
  keys = {
      { "<F5>", function() require("dap").step_over() end, desc = "Step Over" },
      { "<F9>", function() require("dap").continue() end, desc = "Continue" },
    },
  },
}
