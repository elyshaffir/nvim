return {
  "folke/tokyonight.nvim",
  lazy = false,
  priority = 1000,
  opts = {
    -- Change the style if you want, e.g., "night", "storm", "moon", or "day"
    style = "night",
    -- You can add other options here, like transparent = true
  },
  config = function(_, opts)
    require("tokyonight").setup(opts)
    -- This command sets the colorscheme. It's important to do this after the setup.
    vim.cmd([[colorscheme tokyonight]])
  end,
}
