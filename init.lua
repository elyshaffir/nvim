
require("config.lazy")
require("config.mini_clue")
require("config.mini_files")

vim.opt.clipboard = "unnamedplus"
vim.o.timeoutlen = 2000
vim.keymap.set("n", "-", function()
	MiniFiles.open()
end)
