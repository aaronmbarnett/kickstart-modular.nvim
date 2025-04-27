return {
  {
    'sainnhe/everforest',
    lazy = false,
    priority = 1000,
    config = function()
      -- Optionally configure and load the colorscheme
      -- directly inside the plugin declaration.
      vim.opt.background = 'light'
      vim.g.everforest_enable_italic = true
      vim.cmd.colorscheme 'everforest'
      vim.g.everforest_currend_word = 'underline'
      vim.g.everforest_background = 'soft'
      vim.g.everforest_diagnostic_virtual_text = 'colored'
    end,
  },
}
