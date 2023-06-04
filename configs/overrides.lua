local M = {}

M.treesitter = {
  ensure_installed = {
    "vim",
    "lua",
    "html",
    "css",
    "javascript",
    "typescript",
    "tsx",
    "c",
    "markdown",
    "markdown_inline",
  },
}

M.mason = {
  ensure_installed = {
    "lua-language-server",
    "stylua",
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    "deno",
    "prettier",
    "clangd",
    "clang-format",
  },
}

M.nvimtree = {
  renderer = {
    icons = {
      glyphs = {
        folder = {
          default = "󰉋",
          empty = "",
          empty_open = "",
          open = "",
        }
      }
    }
  }
}

return M
