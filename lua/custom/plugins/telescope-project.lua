return {
  'nvim-telescope/telescope-project.nvim',
  dependencies = { 'nvim-telescope/telescope.nvim' },
  config = function()
    require('telescope').setup {
      extensions = {
        project = {
          base_dirs = {
            '~/cachy-dots',
            '~/tty-dotfiles',
            '~/utono',
          }, -- Adjust this to your project directories
          hidden_files = false, -- Include hidden files in search
        },
      },
    }
    pcall(require('telescope').load_extension, 'project')

    -- Keymap for Project Picker
    vim.keymap.set('n', '<leader>pp', function()
      require('telescope').extensions.project.project {}
    end, { desc = '[F]ind [P]roject' })
  end,
}
