return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = {
      ensure_installed = {
        -- default
        "vim",
        "lua",
        -- web dev
        "html",
        "css",
        "javascript",
        "typescript",
        "tsx",
        "json",
        "php",
        -- common
        "python",
      },
    },
  },
  {
    "williamboman/mason.nvim",
    opts = {
      ensure_installed = {
        "lua-language-server",
        "pyright",
        "typescript-language-server",
        "eslint_d",
        "prettierd",
        "intelephense",
        "phpstan",
        "php-cs-fixer",
      },
    },
  },
  {
    "neovim/nvim-lspconfig",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },
  {
    "matze/vim-move",
    lazy = false,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  {
    "heavenshell/vim-pydocstring",
    lazy = false,
  },
  {
    "matbme/JABS.nvim",
    lazy = false,
    config = function()
      require("jabs").setup {}
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = { "nvim-lua/plenary.nvim" },
    opts = {},
  },
}
