return {
  "olimorris/codecompanion.nvim",
  version = "v17.*",
  dependencies = {
    "nvim-lua/plenary.nvim",
    "nvim-treesitter/nvim-treesitter",
    "ravitemer/mcphub.nvim",
  },
  keys = {
    { "<leader>ga", "<cmd>CodeCompanionActions<cr>", desc = "CodeCompanion actions" },
    { "<leader>gc", "<cmd>CodeCompanion /commit<cr>", desc = "Generate commit message" },
  },
  opts = {
    opts = {
      log_level = "DEBUG",
    },
    adapters = {
      gemini = function()
        return require("codecompanion.adapters").extend("gemini", {
          env = {
            api_key = vim.env.GEMINI_API_KEY,
          },
          schema = {
            model = {
              default = "gemini-2.5-pro", -- Or: gemini-3-pro-preview, gemini-2.0-flash
            },
          },
        })
      end,
    },
    extensions = {
      mcphub = {
        callback = "mcphub.extensions.codecompanion",
        opts = {
          make_tools = true,
          show_server_tools_in_chat = true,
          show_result_in_chat = true,
          requires_approval = false,
        },
      },
    },
    strategies = {
      chat = {
        adapter = "gemini",
      },
      inline = {
        adapter = "gemini",
      },
    },
    prompt_library = {
      ["Commit Message"] = {
        strategy = "inline",
        description = "Generate a commit message",
        opts = {
          index = 10,
          is_default = true,
          is_slash_cmd = true,
          short_name = "commit",
          auto_submit = true,
        },
        prompts = {
          {
            role = "user",
            content = function()
              return string.format(
                [[You are an expert at following the Conventional Commit specification. Given the git diff listed below, please generate a commit message for me:

```diff
%s
```

Output only the commit message, nothing else.]],
                vim.fn.system("git diff --staged")
              )
            end,
          },
        },
      },
    },
  },
}
