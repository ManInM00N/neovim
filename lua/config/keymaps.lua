-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
--
local keymap = vim.keymap.set
local opts = { noremap = true, silent = true }
keymap("n", "<f2>", ":Dashboard <CR>", opts)
keymap("i", "jk", "<Esc>", opts)
keymap("i", "kk", "<Esc>", opts)
keymap("i", "jj", "<Esc>", opts)
keymap("i", "kj", "<Esc>", opts)

keymap("n", "<A-w>", ":bd | bp <CR>", opts)
-- 设置 F4 键映射编译运行c++
--local funcs = require("config.func")
--vim.api.nvim_set_keymap(
--  "n",
--  "<F4>",
--  '<cmd>lua require("config.func").compile_and_run_cpp()<CR>',
--  { noremap = true, silent = true, desc = "编译&运行" }
-- )
keymap(
  "n",
  "<F4>",
  '<ESC>:w<CR>:split<CR>:te g++ -std=c++23 -Wshadow -Wall -fdiagnostics-color=always -g "%:p" -o "%:h/bin/%<"  && time "%:h/bin/%:t:r"<CR>i',
  { noremap = true, silent = true, desc = "编译&运行" }
)
-- keymap(
--   "n",
--   "<F8>",
--   "<ESC>:w<CR>:te g++ -std=c++23 -Wshadow -Wall -fdiagnostics-color=always -g %:p -o %:h/bin/%:t:r <CR> "
-- )
-- keymap("n", "<F9>", ":te %:h/bin/%:t:r")

-- Debug --
keymap("n", "<C-b>", "<Cmd>DapToggleBreakpoint<CR>", { noremap = true, silent = true, desc = "BreakPoint | 断点" })
keymap(
  "n",
  "<F6>",
  '<ESC>:w<CR>:split<CR>:te g++ -std=c++23 -Wshadow -Wall -fdiagnostics-color=always -g "%:p" -o "%:h/bin/%<" <CR>',
  { noremap = true, silent = true, desc = "Compile G++ | 编译" }
)
keymap("n", "<F5>", function()
  require("dap").continue()
end, { noremap = true, silent = true, desc = "Start/Stop Debug | 启用/停止调试" })
keymap("n", "<F8>", function()
  require("dap").restart()
end, { noremap = true, silent = true, desc = "单步调试" })
-- CPH --
keymap(
  "n",
  "<F9>",
  "<ESC>:w<CR>:CompetiTest receive problem<CR>",
  { noremap = true, silent = true, desc = "接收问题" }
)
keymap(
  "n",
  "<A-r>",
  "<ESC>:w<CR>:CompetiTest run<CR> ",
  { noremap = true, silent = true, desc = "cph Run Test_cases | 运行测试样例" }
)
keymap(
  "n",
  "<A-a>",
  "<ESC>:w<CR>:CompetiTest add_testcase<CR>",
  { noremap = true, silent = true, desc = "cph Add Test_case | 添加测试样例" }
)
keymap(
  "n",
  "<A-s>",
  "<ESC>:w<CR>:CompetiTest show_ui<CR>",
  { noremap = true, silent = true, desc = "cph Show_ui | 显示评测后界面" }
)
keymap(
  "n",
  "<A-e>",
  "<ESC>:w<CR>:CompetiTest edit_testcase<CR>",
  { noremap = true, silent = true, desc = "cph Edit Test_case | 修改测试样例" }
)
keymap(
  "n",
  "<A-d>",
  "<ESC>:w<CR>:CompetiTest delete_testcase<CR>",
  { noremap = true, silent = true, desc = "cph Delete Test_case | 删除测试样例" }
)
