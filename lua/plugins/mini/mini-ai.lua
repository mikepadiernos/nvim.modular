return {
  'echasnovski/mini.ai',
  enabled = false,
  config = function()
    require('mini.ai').setup {
      n_lines = 500,
    }
  end,
}
