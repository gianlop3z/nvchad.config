local M = {}

M.plugins = "custom.plugins"

M.ui = {
  theme = "chadracula",
  nvdash = {
    load_on_startup = true,
  },
}

M.mappings = require "custom.mappings"

return M
