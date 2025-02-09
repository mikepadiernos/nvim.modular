return {
  "neovim/nvim-lspconfig",
  dependencies = {
    -- Automatically install LSPs and related tools to stdpath for Neovim
    {
      "williamboman/mason.nvim",
      opts = {
        ensure_installed = {
          "markdownlint",
          "prettier",
          "prettierd",
          "phpactor",
          "phpcs",
          "phpcbf",
          "php-debug-adapter",
          "css-lsp",
          "css-variables-language-server",
          "cssmodules-language-server",
          "delve",
          "emmet-language-server",
          "eslint-lsp",
          "html-lsp",
          "htmlbeautifier",
          "json-lsp",
          "lua_ls",
          "stylelint-lsp",
          "twigcs",
        },
      },
      config = true,
    }, -- NOTE: Must be loaded before dependants
    "williamboman/mason-lspconfig.nvim",
    "WhoIsSethDaniel/mason-tool-installer.nvim",
    "mfussenegger/nvim-lint",
    "rshkarin/mason-nvim-lint",

    -- Useful status updates for LSP.
    -- NOTE: `opts = {}` is the same as calling `require('fidget').setup({})`
    { "j-hui/fidget.nvim", opts = {} },

    -- Allows extra capabilities provided by nvim-cmp
    "hrsh7th/cmp-nvim-lsp",
  },
  config = function()
    require "core.lspconfig"
    require("mason-nvim-lint").setup()
  end,
}
