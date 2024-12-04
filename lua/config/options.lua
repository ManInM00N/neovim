-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here
------  vim options -----
vim.opt.number = true -- show line numbers

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4
vim.opt.softtabstop = 4
vim.opt.cindent = true
-- vim.opt.autoindent = true
vim.opt.wrap = false
-- vim.opt.smartindent = true

-- vim.opt.smarttab = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.termguicolors = true
vim.opt.cursorline = true
vim.opt.clipboard = "unnamedplus"
vim.opt.signcolumn = "yes" -- show sign column so that text doesn't shift

vim.g.neoformat_enabled = {}

vim.cmd("autocmd FileType lua setlocal formatexpr=")
-- vim.cmd("autocmd BufWritePre *.lua noformat")
