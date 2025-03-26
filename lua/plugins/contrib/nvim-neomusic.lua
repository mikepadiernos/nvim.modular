return {
  lazy = false,
  "aroario2003/neomusic.nvim",
  dependencies = { "nvim-telescope/telescope.nvim" },
  config = function()
    require("neomusic").setup {
      --The directory that you have your playlists are in
      playlist_dir = os.getenv "HOME" .. "/Library/__ Media/__ Entertainment/Music",

      --Any notifications recieved from neomusic will
      --timeout after this amount of seconds
      notif_timeout = 5,

      --Max items that can be put into the song queue at a time,
      --nil means use the default (1,000)
      song_queue_max_items = nil,

      --Neovim global keymaps, which are not buffer local,
      --make sure these dont conflict with existing keybinds
      -- global_keymaps = {
      --   keybinds = {
      --     { "n", "<leader>nt", ":Neomusic toggle_playlist_menu<CR>" },
      --     { "n", "<leader>nc", ":Neomusic toggle_controls<CR>" },
      --     { "n", "<leader>ps", ":Neomusic unpause_song<CR>" },
      --     { "n", "<leader>Ps", ":Neomusic pause_song<CR>" },
      --     { "n", "<leader>nns", ":Neomusic next_song<CR>" },
      --     { "n", "<leader>nps", ":Neomusic prev_song<CR>" },
      --     { "n", "<leader>nis", ":Neomusic increase_volume 5<CR>" },
      --     { "n", "<leader>nds", ":Neomusic decrease_volume 5<CR>" },
      --     { "n", "<leader>nqv", ":Neomusic toggle_queue_view<CR>" },
      --     { "n", "<leader>npq", ":Neomusic play_queue<CR>" },
      --     { "n", "<leader>nsp", ":Neomusic search_playlists<CR>" },
      --   },
      -- },
    }
  end,
}
