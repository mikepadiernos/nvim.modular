return {

  -- core
  { require "extend.core" },

  -- plugins
  { require "extend.contrib" },
  { require "extend.productivity" },
  { require "extend.icons" },
  { require "extend.treesitter" },
  { require "extend.telescope" },
  -- { require 'extend.cmp' },
  { require "extend.lsp" },
  { require "extend.vim" },
  { require "extend.mini" },
  { require "extend.drupal" },

  -- configs
  { import = "plugins.contrib" },
  { import = "plugins.cmp" },
  { import = "plugins.lsp" },
  { import = "plugins.vim" },
  { import = "plugins.mini" },
  { import = "plugins.drupal" },
}
