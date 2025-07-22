return {
  "nvim-telescope/telescope-media-files.nvim",
  config = function()
    require("telescope").load_extension("media_files")
    require("telescope").setup({
      extensions = {
        media_files = {
          -- filetypes whitelist
          -- defaults to {"png", "jpg", "mp4", "webm", "pdf"}
          filetypes = { "gif", "jpg", "jpeg", "mp4", "png", "webm", "webp" },
          -- find command (defaults to `fd`)
          find_cmd = "rg",
        },
      },
    })
  end,
}
