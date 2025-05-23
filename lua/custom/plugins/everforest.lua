local M = {
  'neanias/everforest-nvim',
  lazy = false,
  priority = 1000, -- make sure to load this before all the other start plugins
}

function M.config()
  vim.opt.background = 'light'
  local everforest = require 'everforest'
  everforest.setup {
    background = 'soft',
    transparent_background_level = 0,
    italics = false,
    disable_italic_comments = false,
  }
  everforest.load()
end

return M
