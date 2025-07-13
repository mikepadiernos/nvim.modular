return {
  "owallb/mason-auto-install.nvim",
  dependencies = {
    "williamboman/mason.nvim",
    -- Optional: LSP configurations in `vim.lsp.config` needs to be loaded
    -- first to find associated filetypes automatically. If you use
    -- lspconfig for that, add it as a dependency.
    "neovim/nvim-lspconfig",
  },
  opts = {
    packages = {
      "css-lsp",
      "emmet-language-server",
      "emmet-ls",
      "emmylua_ls",
      "eslint_d",
      "eslint-lsp",
      "html-lsp",
      "htmlbeautifier",
      "htmlhint",
      "js-debug-adapter",
      "local-lua-debugger-vscode",
      "lua-language-server",
      "luacheck",
      "luaformatter",
      "markdownlint",
      "php-cs-fixer",
      "php-debug-adapter",
      "phpactor",
      "phpcbuf",
      "phpcs",
      "phpmd",
      "phpstan",
      "prettier",
      "prettierd",
      "pretty-php",
      "prettydiff",
      "stylua",
      "terraform",
      "terraform-ls",
      "vim-language-server",
    },
  },
}
