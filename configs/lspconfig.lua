local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local lspconfig = require "lspconfig"
local servers = { "lua_ls", "pyright", "intelephense" }

local utils = require "custom.utils.lsp"

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  commands = {
    TSOrganizeImports = {
      utils.tsserver_organize_imports,
      description = "Organize imports",
    },
  },
}
