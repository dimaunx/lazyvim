-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps hereby
local keymap = vim.keymap
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
keymap.set(
  "n",
  "<leader>tv",
  "<cmd>ToggleTerm size=80 direction=vertical name=term<cr>",
  { desc = "Vertical terminal" }
)
keymap.set(
  "n",
  "<leader>th",
  "<cmd>ToggleTerm size=20 direction=horizontal name=term<cr>",
  { desc = "Horizontal terminal" }
)
keymap.set("n", "<leader>tt", "<cmd>ToggleTerm direction=float name=term<cr>", { desc = "Tab terminal" })
