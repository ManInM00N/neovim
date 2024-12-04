-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
-- Add any additional autocmds here

-- vim.b.autoformat = true
vim.api.nvim_create_autocmd({ "FileType" }, {
  pattern = { "go", "c", "cpp", "md", "txt", "c.snippets", "cpp.snippets" },
  callback = function()
    vim.opt_local.expandtab = true
    vim.opt_local.tabstop = 4
    vim.opt_local.shiftwidth = 4
    vim.opt_local.softtabstop = 4
  end,
})


-- org_imports 函数，用于自动导入 Go 代码
function org_imports(wait_ms)
    local params = vim.lsp.util.make_range_params()
    params.context = {only = {"source.organizeImports"}}
    local result = vim.lsp.buf_request_sync(0, "textDocument/codeAction", params, wait_ms)
    for _, res in pairs(result or {}) do
        for _, r in pairs(res.result or {}) do
            if r.edit then
                vim.lsp.util.apply_workspace_edit(r.edit)
            else
                vim.lsp.buf.execute_command(r.command)
            end
        end
    end
end

-- 设置 CompleteDone 自动命令，完成代码补全后自动导包
vim.api.nvim_create_autocmd('CompleteDone', {
    pattern = '*.go',
    callback = function()
        org_imports()
    end
})

-- 设置保存文件前自动格式化
--vim.api.nvim_create_autocmd('BufWritePre', {
--    pattern = '*.go',
--    callback = function()
--         vim.lsp.buf.format({
--            async = true,  -- 异步格式化
--        })
--    end
--})

