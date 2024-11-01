return {
  'fedepujol/move.nvim',
  opts = {
    --- Config
  },
  config = function()
    require('move').setup {
      line = {
        enable = true,
        indent = true,
      },
      block = {
        enable = true,
        indent = true,
      },
      word = {
        enable = true,
      },
      char = {
        enable = false,
      },
    }
  end,
}
