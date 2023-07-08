-- snippets
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"

-- pydocstring
vim.g.pydocstring_doq_path = "/Library/Frameworks/Python.framework/Versions/3.11/bin/doq"
vim.g.pydocstring_formatter = "google"

-- vim-move
vim.g.move_normal_option = 1

-- vim-visual-multi
vim.g.VM_maps = {
  ["Add Cursor Up"] = "<S-Up>",
  ["Add Cursor Down"] = "<S-Down>",
}

-- diagnostics
vim.o.updatetime = 2000
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
