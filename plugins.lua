return {
  { "nvim-treesitter/nvim-treesitter" },
  { "williamboman/mason.nvim" },
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
    "roobert/search-replace.nvim",
    lazy = false,
    config = function()
      require("search-replace").setup {}
    end,
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
  },
}
