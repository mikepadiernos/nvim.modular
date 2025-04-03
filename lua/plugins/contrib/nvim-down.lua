-- Place in lazy.nvim spec
return {
    "clpi/down.nvim",
    opts         = {
      workspace = {
        default = "notes",
        workspaces = {
          notes = "~/notes",
          personal = "~/home"
        }
      }
    },
    dependencies = {
      "nvim-treesitter/nvim-treesitter",
      "nvim-lua/plenary.nvim",
      "MunifTanjim/nui.nvim",
      "pysan3/pathlib.nvim",
      "nvim-neotest/nvim-nio",
      "nvim-telescope/telescope.nvim", -- optional
    },
}
