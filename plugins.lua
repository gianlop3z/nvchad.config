local overrides = require "custom.configs.overrides"

return {
  {
    "nvim-treesitter/nvim-treesitter",
    opts = overrides.treesitter,
  },
  {
    "williamboman/mason.nvim",
    opts = overrides.mason,
  },
  {
    "nvim-tree/nvim-tree.lua",
    opts = overrides.nvimtree,
  },
  {
    "matze/vim-move",
    lazy = false,
  },
  {
    "mg979/vim-visual-multi",
    lazy = false,
  },
  {
    "folke/trouble.nvim",
    lazy = false,
  },
  {
    "heavenshell/vim-pydocstring",
    lazy = false,
  },
  {
    "roobert/search-replace.nvim",
    lazy = false,
    config = function()
      require("search-replace").setup {}
    end,
  },
  {
    "folke/todo-comments.nvim",
    dependencies = {
      "nvim-lua/plenary.nvim",
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
}
