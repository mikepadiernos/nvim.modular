return {
  "olimorris/onedarkpro.nvim",
  priority = 1000, -- Ensure it loads first
  config = function()
    require("onedarkpro").setup {
      highlights = {
        Normal = { bg = User_bg },
        NormalNC = { bg = User_bg },
        NvimTreeWinSeparator = { fg = User_bg, bg = User_bg },
        NvimTreeNormal = { bg = User_bg },
        NvimTreeNormalNC = { bg = User_bg },
        NvDashAscii = { fg = User_accent },
        TabLineSel = { bg = User_bg },
        StatusLine = { bg = User_bg },
        St_NormalMode = { bg = User_accent },
        St_NormalModeSep = { fg = User_accent, bg = User_accent },
        -- St_file = { bg = User__bg },
        -- St_file_sep = { bg = User__bg },
        -- St_cwd_sep = { bg = User__bg },
        -- St_pos_sep = { bg = User__bg },
        St_EmptySpace = { bg = User_bg },
        St_cwd_text = { fg = "#fe1a66", bg = "#1e030c" },
        St_gitIcons = { bg = User_bg },
        St_pos_text = { bg = "#001708" },
        St_Lsp = { bg = "#0d0f19" },
        St_LspMsg = { bg = User_bg },
        St_lspError = { bg = User_bg },
        St_lspWarning = { bg = User_bg },
        St_lspHints = { bg = User_bg },
        St_lspInfo = { bg = User_bg },
      },
    }
  end,
}
