return { 
	'echasnovski/mini.nvim',
	version = false,
	config = function()
		require("mini.pairs").setup()
		require("mini.comment").setup()
		require('mini.completion').setup()
		require('mini.move').setup()
		require('mini.surround').setup()
		require('mini.bracketed').setup()
		require('mini.jump2d').setup()
	end,
}
