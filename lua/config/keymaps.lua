-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local keymap = vim.keymap
local wk = require("which-key")

-- windows
keymap.set("n", "<leader>ww", "<C-W>p", { desc = "Other window", remap = true })
keymap.set("n", "<leader>wd", "<C-W>c", { desc = "Delete window", remap = true })
keymap.set("n", "<leader>w-", "<C-W>s", { desc = "Split window below", remap = true })
keymap.set("n", "<leader>w|", "<C-W>v", { desc = "Split window right", remap = true })
keymap.set("n", "<leader>-", "<C-W>s", { desc = "Split window below", remap = true })
keymap.set("n", "<leader>|", "<C-W>v", { desc = "Split window right", remap = true })

-- Move line/block
keymap.set("n", "<A-j>", "<cmd>:MoveLine(1)<cr>")
keymap.set("n", "<A-k>", "<cmd>:MoveLine(-1)<cr>")
keymap.set("i", "<A-j>", "<cmd>:MoveBlock(1)<cr>")
keymap.set("i", "<A-k>", "<cmd>:MoveBlock(-1)<cr>")

-- Buffers
keymap.set("n", "<TAB>", "<cmd>bnext<cr>", { desc = "Next buffer" })
keymap.set("n", "<S-TAB>", "<cmd>bprevious<cr>", { desc = "Prev buffer" })

-- Minimap
-- keymap.set("n", "<leader>mm", "<cmd>MinimapToggle<cr>", { desc = "Next buffer" })

-- Words
keymap.set("n", "dw", "vb_d")

-- Toggle highlight
keymap.set("n", "<leader>uh", "<cmd>LocalHighlightToggle<cr>", { desc = "Toggle highlight" })

-- Oil nvim
keymap.set("n", "-", "<CMD>Oil<CR>", { desc = "Open parent directory" })

-- Print env vars
keymap.set("n", "<leader>ue", "<cmd>!printenv<cr>", { desc = "Print all env vars" })

-- GO https://github.com/ray-x/go.nvim
wk.register({
  G = {
    name = "GO",
    c = { "<cmd>GoCmt<CR>", "Gen func comment", mode = "n" },
    s = { "<cmd>GoFillStruct<CR>", "Fill struct", mode = "n" },
    a = { "<cmd>GoAddTag<CR>", "Add struct tags", mode = "n" },
    d = { "<cmd>GoRmTag<CR>", "Remove struct tags", mode = "n" },
    e = { "<cmd>GoIfErr<CR>", "Add if err block", mode = "n" },
    j = { "<cmd>GoJson2Struct Gen<cr>", "Gen struct from json", mode = "n" },
    t = { "<cmd>GoAddTest<cr>", "Gen func tests", mode = "n" },
    r = { "<cmd>GoGenReturn<cr>", "Gen func return values", mode = "n" },
    i = { "<cmd>GoImplements<cr>", "Go Implements", mode = "n" },
  },
}, { prefix = "<leader>" })
