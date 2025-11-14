local bufnr = vim.api.nvim_get_current_buf()
vim.keymap.set(
  "n", 
  "<leader>a", 
  function()
    vim.cmd.RustLsp('codeAction') -- supports rust-analyzer's grouping
    -- or vim.lsp.buf.codeAction() if you don't want grouping.
  end,
  { silent = true, buffer = bufnr, desc = "Show code actions"}
)
vim.keymap.set(
  "n", 
  "<leader>k",  -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
  function()
    vim.cmd.RustLsp({'hover', 'actions'})
  end,
  { silent = true, buffer = bufnr, desc = "Show hover actions" }
)

vim.keymap.set(
  "n", 
  "<leader>q", 
  function()
	vim.cmd.RustFmt()
  end,
  { silent = true, buffer = bufnr, desc = "Format with RustFmt" }
)
