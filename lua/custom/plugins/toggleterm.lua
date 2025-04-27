return {
  {
    'akinsho/toggleterm.nvim',
    version = '*',
    -- lazy-load when you press <c-\> or <leader>gg
    keys = {
      { '<c-\\>', mode = { 'n', 't' }, desc = 'Toggle terminal' },
      { '<leader>gg', desc = 'Toggle LazyGit terminal' },
    },
    opts = {
      open_mapping = [[<c-\>]],
      direction = 'float',
      close_on_exit = true,
      shading_factor = 2,
      float_opts = {
        border = 'curved',
        width = math.floor(vim.o.columns * 0.9),
        height = math.floor(vim.o.lines * 0.9),
        winblend = 0,
      },
    },
    config = function(_, opts)
      -- 1) apply the opts to toggleterm
      require('toggleterm').setup(opts)

      local Terminal = require('toggleterm.terminal').Terminal
      -- 2) create a dedicated floating terminal for lazygit
      local lazygit = Terminal:new {
        cmd = 'lazygit',
        hidden = true,
        direction = 'float',
        float_opts = {
          border = 'double',
          width = math.floor(vim.o.columns * 0.8),
          height = math.floor(vim.o.lines * 0.8),
        },
      }

      -- 3) expose a global toggle function
      _G.toggle_lazygit = function()
        lazygit:toggle()
      end

      -- 4) map <leader>gg → that toggle function
      vim.keymap.set('n', '<leader>gg', _G.toggle_lazygit, { noremap = true, silent = true, desc = 'Toggle LazyGit in float' })
    end,
  },
}
