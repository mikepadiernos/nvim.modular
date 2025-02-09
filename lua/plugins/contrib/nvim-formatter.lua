return {
  "seblyng/nvim-formatter",
  config = function()
    require("formatter").setup {
      treesitter = {
        auto_indent = {
          lua = true,
          graphql = function()
            return vim.bo.ft ~= "markdown"
          end,
        },
        disable_injected = {
          markdown = { "rust" },
        },
      },
    }
  end,
}
