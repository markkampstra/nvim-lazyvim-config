-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here
local Util = require("lazyvim.util")

-- DO NOT USE THIS IN YOU OWN CONFIG!!
-- use `vim.keymap.set` instead
local map = Util.safe_keymap_set

map("v", "<C-c>", ":w !pbcopy<CR>", { desc = "Copy to clipboard" })

-- Test keys
map("n", "<Leader>sr", ":TestNearest<CR>", { desc = "TestNearest" })
map("n", "<Leader>sf", ":TestFile<CR>", { desc = "TestFile" })
map("n", "<Leader>sa", ":TestSuite<CR>", { desc = "TestSuite" })
map("n", "<Leader>sl", ":TestLast<CR>", { desc = "TestLast" })
map("n", "<Leader>sa", ":TestVisit<CR>", { desc = "TestVisit" })

map("n", "<Leader>co", ":Copilot status<CR>", { desc = "Copilot status" })
