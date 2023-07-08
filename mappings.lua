local M = {}

M.disabled = {
  n = {
    ["<C-s>"] = "", -- "Save file" changed to <leader>s
    ["<C-n>"] = "", -- "Toggle nvimtree" changed to <leader>e
    ["<leader>n"] = "", -- "Toggle line numbers" changed to "Toggle nvimtree"
  },
}

M.general = {
  n = {
    [";"] = { ":", "Enter command mode", opts = { nowait = true } },
    ["<leader>,"] = { "<C-w>l", "Focus current right buffer" },
    ["<leader>s"] = { "<cmd>w<CR>", "Save file" },
    ["<leader>ro"] = { "<cmd>SearchReplaceSingleBufferOpen<CR>", "Search and replace in current buffer" },
    ["<leader>oi"] = { "<cmd>TSOrganizeImports<CR>", "Organize imports in typescript files" },
    ["<leader>n"] = { "<cmd>NvimTreeToggle<CR>" },
    ["<leader>ax"] = { "<cmd>%bd | e# | NvimTreeOpen<CR>" },
  },
}

return M
