local present, null_ls = pcall(require, "null-ls")

if not present then
  return
end

local b = null_ls.builtins

local utils = require "custom.utils.null_ls"

local augroup = vim.api.nvim_create_augroup("LspFormatting", {})

local sources = {
  -- lua
  b.formatting.stylua,
  -- web
  b.formatting.eslint_d,
  b.formatting.prettierd,
  b.formatting.phpcsfixer,
  -- python
  b.formatting.black,
  b.formatting.isort,
}

null_ls.setup {
  debug = true,
  sources = sources,
  on_attach = function(client, bufnr)
    utils.format(client, bufnr, augroup)
  end,
}
