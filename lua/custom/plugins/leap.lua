return {
  {
    'ggandor/leap.nvim',
    name = 'leap',
    config = function()
      require('leap').set_default_mappings()
    end,
  },
}
