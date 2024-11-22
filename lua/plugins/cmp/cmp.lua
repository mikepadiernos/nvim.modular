return {
  { -- Autocompletion
    "hrsh7th/nvim-cmp",
    event = "InsertEnter",
    dependencies = {
      -- Snippet Engine & its associated nvim-cmp source
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        dependencies = "rafamadriz/friendly-snippets",
        opts = { history = true, updateevents = "TextChanged,TextChangedI" },
        config = function(_, opts)
          require("luasnip").config.set_config(opts)
          require "nvchad.configs.luasnip"
        end,
      },
      -- autopairing of (){}[] etc
      {
        "windwp/nvim-autopairs",
        opts = {
          fast_wrap = {},
          disable_filetype = { "TelescopePrompt", "vim" },
        },
        config = function(_, opts)
          require("nvim-autopairs").setup(opts)

          -- setup cmp for autopairs
          local cmp_autopairs = require "nvim-autopairs.completion.cmp"
          require("cmp").event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
      },
      {
        "michaelpadiernos-forks/css-vars.nvim",
        opts = {
          -- If you use CSS-in-JS, you can add the autocompletion to JS/TS files.
          cmp_filetypes = { "javascript", "javascriptreact", "typescript", "typescriptreact" },
          -- WARNING: The search is not optimized to look for variables in JS files.
          -- If you change the search_extensions you might get false positives and weird completion results.
          search_extensions = { ".js", ".ts", ".jsx", ".tsx" },
        },
      },
      -- cmp sources plugins
      {
        "saadparwaiz1/cmp_luasnip",
        "hrsh7th/cmp-nvim-lua",
        "hrsh7th/cmp-nvim-lsp",
        "hrsh7th/cmp-buffer",
        "hrsh7th/cmp-path",
        "chrisgrieser/cmp_yanky",
      },
    },
    config = function()
      -- See `:help cmp`
      local cmp = require "cmp"
      -- local config = require "plugins.cmp.cmp"
      local luasnip = require "luasnip"
      luasnip.config.setup {}

      cmp.setup {
        mapping = {
          ["<CR>"] = cmp.mapping.confirm {
            behavior = cmp.ConfirmBehavior.Insert,
            select = false,
          },
        },
        snippet = {
          expand = function(args)
            luasnip.lsp_expand(args.body)
          end,
        },
        completion = { completeopt = "menu,menuone,noinsert" },
        -- for LSPs that (re)enable this:
        preselect = cmp.PreselectMode.None,
        sources = {
          {
            name = "lazydev",
            -- set group index to 0 to skip loading LuaLS completions as lazydev recommends it
            group_index = 0,
          },
          { name = "nvim_lsp" },
          { name = "luasnip" },
          { name = "path" },
          { name = "css_vars" },
          { name = "nerdfonts" },
        },
      }
    end,
  },
}
-- vim: ts=2 sts=2 sw=2 et
