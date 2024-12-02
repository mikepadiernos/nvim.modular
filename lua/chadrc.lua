-- This file needs to have same structure as nvconfig.lua
-- https://github.com/NvChad/ui/blob/v3.0/lua/nvconfig.lua
-- Please read that file to know all available options :(

---@type ChadrcConfig
local M = {}

require "user.colors"

M.lsp = { signature = false }

M.nvdash = {
  load_on_startup = true,
  header = {
    "                            ",
    "    █████████████████████   ",
    "                      ███   ",
    "    ███   ███   ███   ███   ",
    "    ███   ███   ███   ███   ",
    "    ███   ███   █████████   ",
    "    ███   ███   ███         ",
    "    ███   ███   ███         ",
    "                            ",
    "                            ",
    "                            ",
  },
  buttons = {
    { txt = "   Projects", keys = "󱁐 fp", cmd = "Telescope projects" },
    -- { txt = "   Recent Files", keys = "󱁐 fo", cmd = "Telescope oldfiles" },
    -- { txt = "   Find File", keys = "󱁐 ff", cmd = "Telescope find_files" },
    -- { txt = "󰛳   Connect Remote", keys = "󱁐 fv", cmd = "Telescope remote-sshfs" },
    { txt = "   File Manager", keys = "󱁐 fs", cmd = "SimplyFileOpen" },
    { txt = " ", no_gap = true, rep = true },
    { txt = "󰞋   Help", keys = "󱁐 fh", cmd = "Telescope help_tags" },
    { txt = "   Keyboard Shortcuts", keys = "󱁐 ch", cmd = "NvCheatsheet" },

    { txt = " ", hl = "NvDashFooter", no_gap = true, rep = true },
    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "  Loaded " .. stats.loaded .. "/" .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
    },
    { txt = " ", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}

M.base46 = {
  theme = "onedark",

  hl_override = {
    Normal = { bg = User_bg },
    NormalNC = { bg = User_bg },
    NormalFloat = { bg = User_bg },
    WinSeparator = { fg = User_bg, bg = User_bg },
    TabLineSel = { bg = User_bg },
    TbFill = { bg = User_bg },
    TbBufOn = { bg = User__bg2 },
    TbBufOnClose = { bg = User__bg2 },
    TbBufOnModified = { bg = User__bg2 },
    TbBufOff = { bg = User_bg },
    TbBufOffClose = { bg = User_bg },
    TbBufOffModified = { bg = User_bg },
    TbThemeToggleBtn = { bg = User_bg },
    BufferLineBackground = { bg = User_bg },
    StatusLine = { bg = User_bg },
    St_NormalMode = { fg = User_bg, bg = User_accent },
    St_NormalModeSep = { fg = User_accent, bg = User_accent },
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
    NvDashAscii = { fg = User_accent },
    TelescopeNormal = { bg = User_bg2 },
    TelescopeBorder = { fg = User_bg2, bg = User_bg2 },
    TelescopeResultsTitle = { fg = User_bg2, bg = User_bg2 },
    TelescopeResultsNormal = { fg = "#ffffff" },
    TelescopeSelection = { fg = User_accent, bg = User_bg2 },
    TelescopePromptNormal = { bg = User__bg },
    TelescopePromptBorder = { fg = User__bg, bg = User__bg },
    NoiceCmdlinePopup = { fg = User__bg },
    NoiceCompletionItemKindDefault = { fg = User_bg2, bg = User_bg2 },
    NvimTreeWinSeparator = { fg = User_bg, bg = User_bg },
    NvimTreeNormal = { bg = User_bg },
    NvimTreeNormalNC = { bg = User_bg },
  },
}

M.ui = {
  tabufline = {
    lazy = false,
  },
  statusline = {
    separator_style = "block",
  },
}

return M
