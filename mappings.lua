local M = {}

M.disabled = {
  n = {
    ["<C-s>"] = "", -- disable save file, it's <leader>s now
    ["<C-j>"] = "", -- move line down override
    ["<C-k>"] = "", -- move line up override
    ["<C-h>"] = "", -- move line left override
    ["<C-l>"] = "", -- move line right override
    ["<C-n>"] = "", -- toogle nvimtree
    ["<leader>n"] = "", -- toogle line number
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>,"] = { "<C-w>l", "window right" },
    ["<leader>s"] = { "<cmd>w<CR>", "save file" },
    ["<leader>n"] = { "<cmd>NvimTreeToggle<CR>" },
    ["<leader>ax"] = { "<cmd>%bd | e# | NvimTreeOpen<CR>" },
    ["<leader>ro"] = { "<cmd>SearchReplaceSingleBufferOpen<CR>", "search and replace in open buffer" },
    ["<leader>oi"] = { "<cmd>TSOrganizeImports<CR>", "organize imports in `typescript` files" },
    ["<leader>[t"] = {
      function()
        require("todo-comments").jump_next()
      end,
      "jump to next `todo-comments` comment",
    },
    ["<leader>]t"] = {
      function()
        require("todo-comments").jump_prev()
      end,
      "jump to previous `todo-comments` comment",
    },
  },
}

return M
