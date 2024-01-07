-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt

opt.termguicolors = true -- True color support
opt.confirm = true -- Confirm to save changes before exiting modified buffer
opt.ignorecase = true -- Ignore case
opt.mouse = "a" -- Enable mouse mode
opt.number = true -- Print line number
opt.relativenumber = true -- Relative line numbers
opt.spell = false
opt.conceallevel = 0
