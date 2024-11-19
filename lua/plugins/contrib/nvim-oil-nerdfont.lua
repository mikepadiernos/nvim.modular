return {
  "Omochice/oil-nerdfont",
  config = function()
    require("oil-nerdfont").setup {
      -- setting for highlight icon
      highlight = {
        -- highlight group name for directory icon
        directory = "OilDirIcon",
        -- highlight group name for file icon
        file = nil,
      },
    }
  end,
}
