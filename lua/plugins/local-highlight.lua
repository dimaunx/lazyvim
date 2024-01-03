return {
  {
    "tzachar/local-highlight.nvim",
    config = function()
      require("local-highlight").setup({
        file_types = { "markdown" }, -- If this is given only attach to this
        -- OR attach to every filetype except:
        disable_file_types = { "tex" },
        hlgroup = "Search",
        cw_hlgroup = nil,
        -- Whether to display highlights in INSERT mode or not
        insert_mode = false,
      })
    end,
  },
}
