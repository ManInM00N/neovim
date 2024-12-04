local M = require("utils.lua")

M = M.merge(M, require("utils.chars"))
M = M.merge(M, require("utils.neovim"))
M = M.merge(M, require("utils.git"))

return M
