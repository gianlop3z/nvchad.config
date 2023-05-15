vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"
vim.g.move_key_modifier = "C"
vim.g.move_key_modifier_visualmode = "C"
vim.opt.clipboard = "unnamedplus"
vim.diagnostic.config {
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
}
