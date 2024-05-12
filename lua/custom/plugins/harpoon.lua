-- harpoon
return {
  'ThePrimeagen/harpoon',
  branch = 'harpoon2',
  dependencies = {
    'nvim-lua/plenary.nvim',
  },
  config = function()
    local harpoon = require 'harpoon'
    harpoon:setup()

    vim.keymap.set('n', '<leader>aa', function()
      harpoon:list():add()
    end, { desc = 'H[a]rpoon' })

    vim.keymap.set('n', '<leader>am', function()
      harpoon.ui:toggle_quick_menu(harpoon:list())
    end, { desc = 'quick [m]enu' })

    vim.keymap.set('n', '<M-1>', function()
      harpoon:list():select(1)
    end)

    vim.keymap.set('n', '<M-2>', function()
      harpoon:list():select(2)
    end)

    vim.keymap.set('n', '<M-3>', function()
      harpoon:list():select(3)
    end)

    vim.keymap.set('n', '<M-4>', function()
      harpoon:list():select(4)
    end)

    vim.keymap.set('n', '<M-5>', function()
      harpoon:list():select(5)
    end)

    vim.keymap.set('n', '<M-6>', function()
      harpoon:list():select(6)
    end)

    vim.keymap.set('n', '<M-7>', function()
      harpoon:list():select(7)
    end)

    vim.keymap.set('n', '<M-8>', function()
      harpoon:list():select(8)
    end)

    -- Toggle previous & next buffers stored within Harpoon list
    vim.keymap.set('n', '<M-j>', function()
      harpoon:list():prev()
    end)

    vim.keymap.set('n', '<M-k>', function()
      harpoon:list():next()
    end)
  end,
}
