require("config.lazy")
require("config.mini_clue")
require("config.mini_files")

vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.timeoutlen = 2000

vim.keymap.set("n", "-", function()
	MiniExtra.pickers.explorer()
end)

vim.api.nvim_create_user_command("Reload", "source $MYVIMRC", {})
