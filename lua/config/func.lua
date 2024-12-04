local M = {}

-- 创建 bin 目录的函数
function M.create_bin_dir()
  local bin_dir = vim.fn.expand("%:p:h") .. "/bin"
  if vim.fn.isdirectory(bin_dir) == 0 then
    vim.fn.mkdir(bin_dir, "p")
  end
  return bin_dir
end
function M.Compile()
  -- 获取当前文件和输出文件路径
  local file = vim.fn.expand("%:p")
  local output = vim.fn.expand("%:p:h") .. "/bin/" .. vim.fn.expand("%:t:r")

  -- 编译命令
  local compile_cmd =
    string.format('g++ -std=c++23 -Wshadow -Wall -fdiagnostics-color=always -g "%s" -o "%s"', file, output)
  return "<ESC>:w<CR>:split<CR>:te" .. compile_cmd .. "<CR>"
end
return M
