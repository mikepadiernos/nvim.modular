return {
  "Rizwanelansyah/simplyfile.nvim",
  tag = "v0.8",
  config = function()
    require("simplyfile").setup {
      border = {
        left = "none",
        main = "none",
        right = "none",
        up = {
          " ",
          " ",
          " ",
          " ",
          " ",
          " ",
          " ",
          " ",
        },
      },
      derfault_keymaps = true,
      keymaps = {
        --- your custom keymaps
        --- {dir} have following field
        --- name: name of file/folder
        --- absolute: absolute path of file/folder
        --- icon: the nerd fonts icon
        --- hl: highlight group name for icon
        --- filetype: type of file
        --- is_folder: folder or not
        -- ["lhs"] = function(dir) --[[ some code ]] end
      },
      preview = {
        image = true, -- for previewing image (for v0.7+ only)
      },
      win_opt = {
        up = {
          -- winhighlight = "Normal",
        },
        right = {
          wrap = false,
        },
        main = {
          number = true,
          relativenumber = true,
        },
      },
      gap = {
        h = 0,
        v = 0,
      },
      margin = {
        --   up = 2,
        --   down = 2,
        --   left = 7,
        --   right = 7,
        up = 0,
        down = 0,
        left = 0,
        right = 0,
      },
    }
  end,
}
