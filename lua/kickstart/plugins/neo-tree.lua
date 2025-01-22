-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    { '\\', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
    { ',', ':Neotree focus<CR>', desc = 'NeoTree focus (comma)', silent = true },
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          [','] = 'close_window', -- Optional: Map comma to close Neo-tree windows within the plugin
        },
      },
    },
  },
}
