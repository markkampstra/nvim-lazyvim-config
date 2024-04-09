-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
local opt = vim.opt
opt.clipboard = "" -- Disable Sync with system clipboard
opt.grepprg = "rg --vimgrep"
opt.mouse = "" -- Disable mouse mode
opt.number = false
opt.relativenumber = false
vim.g.minipairs_disable = true
vim.g.better_whitespace_filetypes_blacklist = { 'dashboard' }
vim.g.autoformat = false

