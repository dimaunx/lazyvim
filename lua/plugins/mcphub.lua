return {
  "ravitemer/mcphub.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
  build = "npm install -g mcp-hub@latest",
  opts = {
    config = vim.fn.expand("~/.config/mcphub/servers.json"),
    port = 3000,
    shutdown_delay = 0,
    use_bundled_binary = false,
    mcp_request_timeout = 180000, -- 3 minutes
  },
}
