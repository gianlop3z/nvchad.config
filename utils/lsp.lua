return {
  tsserver_organize_imports = function()
    vim.lsp.buf.execute_command {
      command = "_typescript.organizeImports",
      arguments = { vim.api.nvim_buf_get_name(0) },
      title = "",
    }
  end,
}
