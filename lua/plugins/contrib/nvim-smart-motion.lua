return {
  "FluxxField/smart-motion.nvim",
  config = function()
    require("smart-motion").setup {
      keys = "fjdksleirughtynm",
      highlight = {
        dim = "SmartMotionDim",
        hint = "SmartMotionHint",
        first_char = "SmartMotionFirstChar",
        second_char = "SmartMotionSecondChar",
        first_char_dim = "SmartMotionFirstCharDim",
      },
      multi_line = true,
      mappings = {
        n = {},
        v = {},
      },
    }
  end,
}
