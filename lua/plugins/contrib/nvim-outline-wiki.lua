return {
  "JockeKv/OutlineWiki.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim", -- Required
    "MunifTanjim/nui.nvim", -- Required
    "nvim-telescope/telescope.nvim", -- Optional
    "nvim-treesitter/nvim-treesitter", -- Optional
    "L3MON4D3/LuaSnip", -- Optional
  },
  opts = {
    base_url = "base_url", -- URL to Outline eg. https://outline.example.com
    token = "token", -- Your access token
    lsp = true, -- Enable the build-in "LSP-server"
    integrations = {
      telescope = true,
      luasnip = true,
      treesitter = true,
    },
  },
}
