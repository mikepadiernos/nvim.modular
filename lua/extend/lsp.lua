return {
  { "neovim/nvim-lspconfig", require "plugins.lsp.lsp-config" },
  { "jay-babu/mason-null-ls.nvim", require "plugins.lsp.lsp-mason-null-ls", lazy = false },
  { "seblj/nvim-lsp-extras", require "plugins.lsp.lsp-extras" },
  { "antosha417/nvim-lsp-file-operations", require "plugins.lsp.lsp-file-operations" },
  { "lukas-reineke/lsp-format.nvim", require "plugins.lsp.lsp-format" },
  { "linrongbin16/lsp-progress.nvim", require "plugins.lsp.lsp-progress" },
  { "nvimdev/lspsaga.nvim", require "plugins.lsp.lsp-saga" },
}
