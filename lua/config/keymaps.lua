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
keymap.set("n", "<A-j>", ":MoveLine(1)<CR>", { noremap = true, silent = true })
keymap.set("n", "<A-k>", ":MoveLine(-1)<CR>", { noremap = true, silent = true })
keymap.set("x", "<A-j>", ":MoveBlock(1)<CR>", { noremap = true, silent = true })
keymap.set("x", "<A-k>", ":MoveBlock(-1)<CR>", { noremap = true, silent = true })

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

-- Window resizing with Ctrl+Arrow keys
keymap.set("n", "<C-Left>", "<cmd>vertical resize -2<cr>", { desc = "Decrease window width" })
keymap.set("n", "<C-Right>", "<cmd>vertical resize +2<cr>", { desc = "Increase window width" })
