return {
  "hedyhli/outline.nvim",
  event = "VeryLazy",
  dependencies = {
    "epheien/outline-treesitter-provider.nvim",
    "epheien/outline-ctags-provider.nvim",
    "msr1k/outline-asciidoc-provider.nvim",
  },
  config = function()
    -- Example mapping to toggle outline
    vim.keymap.set("n", "<leader>o", "<cmd>Outline<CR>", { desc = "Toggle Outline" })

    require("outline").setup {
      -- Your setup opts here (leave empty to use defaults)
      providers = {
        priority = { "lsp", "coc", "markdown", "norg", "treesitter", "ctags", "asciidoc" },
        -- ctags provider options
        ctags = {
          program = "ctags",
          filetypes = {
            ["c++"] = {
              -- ...
            },
          },
        },
      },
    }
  end,
}
