return {
  "albenisolmos/telescope-oil.nvim",
  config = function ()
    require("telescope").setup({
      extensions = {
        oil = {
            hidden = true,
            debug = false,
            no_ignore = false,
            show_preview = true,
        },
      }
    })
  end
}
