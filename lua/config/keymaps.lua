-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local keymap = vim.keymap
local wk = require("which-key")
-- local opsts = { noremap = true, silent = true }

-- Move line/block
keymap.set("n", "<A-j>", "<cmd>:MoveLine(1)<cr>")
keymap.set("n", "<A-k>", "<cmd>:MoveLine(-1)<cr>")
keymap.set("i", "<A-j>", "<cmd>:MoveBlock(1)<cr>")
keymap.set("i", "<A-k>", "<cmd>:MoveBlock(-1)<cr>")

-- Words
keymap.set("n", "dw", "vb_d")
keymap.set("n", "<C-a>", "gg<S-v>G")

-- Terminal
-- stylua: ignore
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=100 direction=vertical name=term<cr>", { desc = "Vertical terminal" })
-- stylua: ignore
keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=20 direction=horizontal name=term<cr>", { desc = "Horizontal terminal" })
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float name=term<cr>", { desc = "Float terminal" })

-- GO https://github.com/ray-x/go.nvim
keymap.set("n", "<leader>cgc", "<cmd>GoCmt<cr>", { desc = "Go gen function comment" })
keymap.set("n", "<leader>cgs", "<cmd>GoFillStruct<cr>", { desc = "Go fill struct" })
keymap.set("n", "<leader>cga", "<cmd>GoAddTag<cr>", { desc = "Go add struct tags" })
keymap.set("n", "<leader>cgd", "<cmd>GoRmTag<cr>", { desc = "Go remove struct tags" })
keymap.set("n", "<leader>cgi", "<cmd>GoIfErr<cr>", { desc = "Go add if err" })
keymap.set("n", "<leader>cgj", "<cmd>GoJson2Struct Gen<cr>", { desc = "Go gen struct from json" })
keymap.set("n", "<leader>cgt", "<cmd>GoAddTest<cr>", { desc = "Go gen test for a function" })
keymap.set("n", "<leader>cgr", "<cmd>GoGenReturn<cr>", { desc = "Go gen return values for a function" })

-- ChatGPT
wk.register({
  C = {
    name = "ChatGPT",
    c = { "<cmd>ChatGPT<CR>", "ChatGPT" },
    e = { "<cmd>ChatGPTEditWithInstruction<CR>", "Edit with instruction", mode = { "n", "v" } },
    g = { "<cmd>ChatGPTRun grammar_correction<CR>", "Grammar Correction", mode = { "n", "v" } },
    t = { "<cmd>ChatGPTRun translate<CR>", "Translate", mode = { "n", "v" } },
    k = { "<cmd>ChatGPTRun keywords<CR>", "Keywords", mode = { "n", "v" } },
    d = { "<cmd>ChatGPTRun docstring<CR>", "Docstring", mode = { "n", "v" } },
    a = { "<cmd>ChatGPTRun add_tests<CR>", "Add Tests", mode = { "n", "v" } },
    o = { "<cmd>ChatGPTRun optimize_code<CR>", "Optimize Code", mode = { "n", "v" } },
    s = { "<cmd>ChatGPTRun summarize<CR>", "Summarize", mode = { "n", "v" } },
    f = { "<cmd>ChatGPTRun fix_bugs<CR>", "Fix Bugs", mode = { "n", "v" } },
    x = { "<cmd>ChatGPTRun explain_code<CR>", "Explain Code", mode = { "n", "v" } },
    r = { "<cmd>ChatGPTRun roxygen_edit<CR>", "Roxygen Edit", mode = { "n", "v" } },
    l = { "<cmd>ChatGPTRun code_readability_analysis<CR>", "Code Readability Analysis", mode = { "n", "v" } },
  },
}, { prefix = "<leader>" })
