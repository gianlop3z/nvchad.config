local M = {}

M.disabled = {
  n = {
    ["<C-s>"] = "",     -- disable save file, it's <leader>s now
    ["<C-j>"] = "",     -- move line down override
    ["<C-k>"] = "",     -- move line up override
    ["<C-n>"] = "",     -- toogle nvimtree
    ["<leader>n"] = "", -- toogle line number
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>s"] = { "<cmd>w<CR>", "save file" },
    ["<leader>,"] = { "<C-w>l", "window right" },
    ["<leader>ax"] = { "<cmd>%bd | e# | NvimTreeOpen<CR>" },
    ["<leader>n"] = { "<cmd>NvimTreeToggle<CR>" },
    ["<leader>t"] = { "<cmd>TroubleToggle<CR>" },
  },
}

return M
