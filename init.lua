local globals = vim.g

-- options
vim.opt.guicursor = "a:block"

-- snippets
globals.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"

-- pydocstring
globals.pydocstring_doq_path = "/Library/Frameworks/Python.framework/Versions/3.11/bin/doq"
globals.pydocstring_formatter = "google"

-- vim-move
globals.move_normal_option = 1

-- vim-visual-multi
globals.VM_maps = {
  ["Add Cursor Up"] = "<S-Up>",
  ["Add Cursor Down"] = "<S-Down>",
}

-- diagnostics
vim.api.nvim_create_autocmd({ "CursorHold", "CursorHoldI" }, {
  pattern = "*",
  callback = function()
    vim.diagnostic.open_float(nil, { focus = false })
  end,
})
