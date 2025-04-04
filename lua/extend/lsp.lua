return {
  {
    name = "lsp-config",
    "neovim/nvim-lspconfig",
    require("plugins.lsp.lsp-config"),
  },
  -- {
  --   "jay-babu/mason-null-ls.nvim",
  --   require("plugins.lsp.lsp-mason-null-ls"),
  -- },
  {
    name = "lsp-extras",
    "seblj/nvim-lsp-extras",
    require("plugins.lsp.lsp-extras"),
  },
  {
    name = "lsp-file-operations",
    "antosha417/nvim-lsp-file-operations",
    require("plugins.lsp.lsp-file-operations"),
  },
  {
    name = "lsp-format",
    "lukas-reineke/lsp-format.nvim",
    require("plugins.lsp.lsp-format"),
  },
  -- {
  --   name = "lsp-lens",
  --   "VidocqH/lsp-lens.nvim",
  --   require "plugins.lsp.lsp-lens"
  -- },
  {
    name = "lsp-progress",
    "linrongbin16/lsp-progress.nvim",
    require("plugins.lsp.lsp-progress"),
  },
  {
    name = "lsp-saga",
    "nvimdev/lspsaga.nvim",
    require("plugins.lsp.lsp-saga"),
  },
}
