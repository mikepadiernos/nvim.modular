return {
  -- Drupal Modules
  {
    name = "drupal",
    "jdrupal-dev/drupal.nvim",
    require "plugins.drupal.drupal",
    lazy = false,
  },
  {
    name = "drupal-code-refactor",
    "michaelpadiernos-forks/code-refactor.nvim",
    require "plugins.drupal.drupal-code-refactor",
    lazy = false,
  },
  {
    name = "drupal-parcel",
    "michaelpadiernos-forks/parcel.nvim",
    require "plugins.drupal.drupal-parcel",
    lazy = false,
  },
  {
    name = "drupal-sh",
    "michaelpadiernos-forks/nvim-drupal-sh",
    require "plugins.drupal.drupal-sh",
    lazy = false,
  },
}
