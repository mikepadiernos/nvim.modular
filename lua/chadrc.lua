-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

User_accent = "#efe100"
User_fg = "#ffffff"
User__fg = "#ffffff"
User_bg = "#000000"
User__bg = "#171717"

vim.api.nvim_set_hl(0, "TideBg", { bg = User__bg })
vim.api.nvim_set_hl(0, "TideHeader", { fg = User_accent, bold = true })
vim.api.nvim_set_hl(0, "TideSeparator", { fg = User__bg })

Keymap = vim.keymap.set

M.lsp = { signature = false }

M.base46 = {
  theme = "gatekeeper",

  hl_override = {
    Normal = { bg = User_bg },
    NormalNC = { bg = User_bg },
    NvimTreeWinSeparator = { fg = User_bg, bg = User_bg },
    NvimTreeNormal = { bg = User_bg },
    NvimTreeNormalNC = { bg = User_bg },
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

M.nvdash = {
  load_on_startup = true,
}

M.ui = {
  statusline = {
    separator_style = "block",
  },
}

return M
