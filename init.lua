-- globals
vim.g.lua_snippets_path = vim.fn.stdpath "config" .. "/lua/custom/snippets"
vim.g.move_key_modifier = "C"
vim.g.move_key_modifier_visualmode = "C"

-- options
vim.opt.clipboard = "unnamedplus"
vim.opt.guicursor = { "n-c:block,i-v-ci-ve:ver50" }

-- diagnostics
vim.diagnostic.config {
  virtual_text = true,
  signs = true,
  underline = true,
  update_in_insert = true,
  severity_sort = false,
}
