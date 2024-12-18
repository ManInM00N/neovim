-- local U = require("lspconfig.util")
-- local LC = require("lspconfig")
-- local mason_registry = require("mason-registry")
-- local DC = require("cmp_nvim_lsp").default_capabilities()
-- local lsp_flags = {
--   debounce_text_changes = 250, -- ms
-- }
--
-- local default = {
--   lsp_flags = lsp_flags,
--   -- capabilities = DC,
-- }
-- local on_attach = function(_, bufnr)
--   local function buf_set_option(...)
--     vim.api.nvim_buf_set_option(bufnr, ...)
--   end
--
--   buf_set_option("omnifunc", "v:lua.vim.lsp.omnifunc")
-- end
-- LC["clangd"].setup({
--   default,
--   root_dir = U.root_pattern(
--     ".clangd",
--     ".clang-tidy",
--     ".clang-format",
--     "compile_commands.json",
--     "compile_flags.txt",
--     "configure.ac",
--     ".git"
--   ),
--   cmd = {
--     "clangd",
--     "--query-driver=/usr/bin/g++,/usr/bin/gcc,/usr/bin/clang,/usr/bin/clang++",
--     "--log=verbose",
--     "--header-insertion=never",
--   },
--   on_attach = on_attach,
--   filetypes = { "c", "cpp", "h" },
--   single_file_support = true,
-- })
--
-- local signs = { Error = " ", Warn = " ", Hint = "󰠠 ", Info = " " }
-- for type, icon in pairs(signs) do
--   local hl = "DiagnosticSign" .. type
--   vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = "" })
-- end
--
-- -- LSP settings (for overriding per client)
-- local handlers = {
--   ["textDocument/hover"] = vim.lsp.with(vim.lsp.handlers.hover, { border = "rounded" }),
--   ["textDocument/signatureHelp"] = vim.lsp.with(vim.lsp.handlers.signature_help, { border = "rounded" }),
-- }
