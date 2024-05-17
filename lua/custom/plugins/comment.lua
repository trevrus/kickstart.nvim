return {
  'numToStr/Comment.nvim',
  event = { 'BufRead', 'BufNewFile' },
  dependencies = {
    'JoosepAlviste/nvim-ts-context-commentstring',
  },
  config = function()
    -- import comment plugin safely
    local comment = require 'Comment'

    local ts_context_commentstring = require 'ts_context_commentstring.integrations.comment_nvim'

    -- enable comment
    -- comment.config.lua.pre_hook = ts_context_commentstring.create_pre_hook()
    comment.setup {
      padding = true,
      sticky = true,
      ignore = '^$',
      toggler = { line = 'gcc', block = 'gbc' },
      opleader = { line = 'gc', block = 'gb' },
      extra = { above = 'gcO', below = 'gco', eol = 'gcA' },
      mappings = { basic = true, extra = true },
      pre_hook = ts_context_commentstring.create_pre_hook(),
      post_hook = function(c) end,
    }
  end,
}
