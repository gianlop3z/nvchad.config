local M = {}

M.disabled = {
  n = {
    ["<C-s>"] = "", -- disable save file, it's <leader>s now
    ["<C-j>"] = "", -- move line up override
    ["<C-k>"] = "", -- move line down override
  },
}

M.general = {
  n = {
    [";"] = { ":", "enter command mode", opts = { nowait = true } },
    ["<leader>s"] = { "<cmd>w<CR>", "save file" },
  },
}

return M
