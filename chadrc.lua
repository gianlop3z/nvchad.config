local M = {}

M.plugins = "custom.plugins"

M.ui = {
  theme = "onenord",
  nvdash = {
    load_on_startup = true,
  },
}

M.mappings = require "custom.mappings"

return M
