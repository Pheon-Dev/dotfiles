local M = {}

M.default = { "BufReadPost", "BufNewFile" }

M.lazy = "VeryLazy"

M.attach = "LspAttach"

M.enter = {
  insert = "InsertEnter",
  vim = "VimEnter",
  ui = "UIEnter",
  cmd = "CmdlineEnter",
}

M.leave = {
  insert = "InsertLeave",
  cmd = "CmdlineLeave",
}

return M
