return { 
	'echasnovski/mini.nvim',
	version = false,
	config = function()
		require("mini.ai").setup()
		require("mini.pairs").setup()
		require("mini.comment").setup()
		require('mini.completion').setup()
		require('mini.move').setup()
		require('mini.bracketed').setup()
		require('mini.jump2d').setup()
		require('mini.misc').setup()
		require('mini.icons').setup()
		require('mini.statusline').setup()
		require('mini.starter').setup()
		require('mini.cursorword').setup({delay = 0})
	end,
}
