vim.opt.clipboard = "unnamedplus"
require("config.lazy")
require("config.mini_clue")
vim.o.timeoutlen = 2000

vim.keymap.set("n", "-", function()
	MiniFiles.open()
end)
