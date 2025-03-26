return {
  "backdround/neowords.nvim",
  config = function()
    local neowords = require "neowords"
    local p = neowords.pattern_presets

    Hops = neowords.get_word_hops(
      p.any_word,
      p.snake_case,
      p.camel_case,
      p.upper_case,
      p.number,
      p.hex_color,
      "\\v\\.+",
      "\\v,+"
    )
  end,
}
