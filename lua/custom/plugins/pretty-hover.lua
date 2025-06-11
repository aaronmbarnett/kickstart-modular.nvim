return {
  'Fildo7525/pretty_hover',
  event = 'LspAttach',
  opts = {},
  config = function()
    local pretty_hover = require 'pretty_hover'
    vim.keymap.set('n', 'K', pretty_hover.hover)
  end,
}
