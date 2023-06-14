-- snippets
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"

-- vim-move
vim.g.move_key_modifier = "C"
vim.g.move_key_modifier_visualmode = "C"

-- pydocstring
vim.g.pydocstring_doq_path = "/Library/Frameworks/Python.framework/Versions/3.11/bin/doq"
vim.g.pydocstring_formatter = "google"

-- diagnostics
vim.o.updatetime = 500
vim.cmd [[autocmd! CursorHold,CursorHoldI * lua vim.diagnostic.open_float(nil, {focus=false})]]
