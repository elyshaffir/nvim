require("config.lazy")
require("config.mini_clue")
require("toggleterm").setup()

vim.opt.clipboard = "unnamedplus"
vim.opt.number = true
vim.opt.relativenumber = true
vim.o.timeoutlen = 2000
vim.lsp.inlay_hint.enable()
vim.diagnostic.config({ virtual_text = true })
vim.g.rustfmt_fail_silently = 1

vim.api.nvim_create_user_command("Reload", "source $MYVIMRC", {})

local builtin = require('telescope.builtin')
vim.keymap.set('n', '<leader>ff', builtin.find_files, { desc = 'Telescope find files' })
vim.keymap.set('n', '<leader>fg', builtin.live_grep, { desc = 'Telescope live grep' })
vim.keymap.set('n', '<leader>fb', builtin.buffers, { desc = 'Telescope buffers' })
vim.keymap.set('n', '<leader>fh', builtin.help_tags, { desc = 'Telescope help tags' })

MiniMisc.setup_auto_root()
MiniMisc.setup_restore_cursor()

function _G.set_terminal_keymaps()
  local opts = {buffer = 0}
  vim.keymap.set('t', '<esc>', [[<C-\><C-n>]], opts)
end

-- if you only want these mappings for toggle term use term://*toggleterm#* instead
vim.cmd('autocmd! TermOpen term://* lua set_terminal_keymaps()')


vim.keymap.set('n', '<leader>e', [[<cmd>NvimTreeOpen<CR>]], { desc = 'Open explorer' })
