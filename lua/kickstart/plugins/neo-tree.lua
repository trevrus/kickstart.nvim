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
    { '<C-_>', ':Neotree reveal<CR>', { desc = 'NeoTree reveal' } }, -- this is the same as <C-/>, as I'll use it
  },
  opts = {
    filesystem = {
      window = {
        mappings = {
          ['<C-_>'] = 'close_window',
        },
      },
    },
  },
}
