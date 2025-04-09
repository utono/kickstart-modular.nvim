return {
  {
    -- Colorscheme configuration
    'folke/tokyonight.nvim',
    priority = 1000, -- Load this before other start plugins.
    init = function()
      -- Load the colorscheme
      vim.cmd.colorscheme 'tokyonight-night'
      -- vim.cmd.colorscheme 'tokyonight-moon'

      -- Customize highlights if needed
      vim.cmd.hi 'Comment gui=none'
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
