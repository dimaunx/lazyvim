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

-- Terminal
-- stylua: ignore
keymap.set("n", "<leader>tv", "<cmd>ToggleTerm size=100 direction=vertical name=term<cr>", { desc = "Vertical terminal" })
-- stylua: ignore
keymap.set("n", "<leader>th", "<cmd>ToggleTerm size=20 direction=horizontal name=term<cr>", { desc = "Horizontal terminal" })
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float name=term<cr>", { desc = "Float terminal" })

-- GO https://github.com/ray-x/go.nvim

wk.register({
  G = {
    name = "GO",
    c = { "<cmd>GoCmt<CR>", "Gen func comment", mode = "n" },
    s = { "<cmd>GoFillStruct<CR>", "Fill struct", mode = "n" },
    a = { "<cmd>GoAddTag<CR>", "Add struct tags", mode = "n" },
    d = { "<cmd>GoRmTag<CR>", "Remove struct tags", mode = "n" },
    i = { "<cmd>GoIfErr<CR>", "Add if err block", mode = "n" },
    j = { "<cmd>GoJson2Struct Gen<cr>", "Gen struct from json", mode = "n" },
    t = { "<cmd>GoAddTest<cr>", "Gen func tests", mode = "n" },
    r = { "<cmd>GoGenReturn<cr>", "Gen func return values", mode = "n" },
  },
}, { prefix = "<leader>" })

-- ChatGPT
wk.register({
  C = {
    name = "ChatGPT",
    n = { "<cmd>GpChatNew vsplit<CR>", "New Chat", mode = { "n", "v" } },
    c = { "<cmd>'<,'>GpChatNew vsplit<CR>", "New chat paste", mode = { "n", "v" } },
    t = { "<cmd>'<,'>GpChatToggle<CR>", "Toggle Chat", mode = { "n", "v" } },
    a = { "<cmd>GpNextAgent<CR>", "Next Agent", mode = { "n", "v" } },
    f = { "<cmd>GpChatFinder<CR>", "Chat Finder", mode = { "n", "v" } },
    s = { "<cmd>GpStop<cr>", "Stop", mode = { "n", "v" } },
    u = { "<cmd>'<,'>GpUnitTests<CR>", "Write UnitTests", mode = { "n", "v" } },
    e = { "<cmd>'<,'>GpExplain<CR>", "Explain Code", mode = { "n", "v" } },
    r = { "<cmd>'<,'>GpCodeReview<CR>", "Code Review", mode = { "n", "v" } },
  },
}, { prefix = "<leader>" })
