-- bootstrap lazy.nvim, LazyVim and your plugins
--

vim.env.PATH = "/usr/local/go/bin:" .. vim.env.PATH
require("config.lazy")
require("config.options")
require("config.autocmds")
require("config.neovide")
require("utils")
require("custom.lua-ship")
require("custom.nvim-cmp")
require("custom.lspconfig")
require("custom.autopairs")
require("config.keymaps")
require("custom.autopairs")
vim.cmd([[
    command! Dashboard lua require('alpha').start()
]])
if vim.g.neovide == true then
  -- vim.cmd(":let g:neovide_fullscreen = 1")
  vim.api.nvim_set_keymap("n", "<F11>", ":let g:neovide_fullscreen = !g:neovide_fullscreen<CR>", {})
end
vim.g.coc_node_path = "/home/czp/.nvm/versions/node/v20.14.0/bin/node"
vim.g.coc_npm_path = "/home/czp/.nvm/versions/node/v20.14.0/bin/npm"
vim.g.vscode_snippets_path = "/home/czp/.config/nvim/lua/config/snippets"
