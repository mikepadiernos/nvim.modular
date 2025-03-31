---@type ChadrcConfig
---@class M

-- local utils = require("nvchad.stl.utils")
local modules = require("user.modules")

local M = {}

require("user.colors")

M.lsp = { signature = false }

M.nvdash = {
  load_on_startup = true,
  header = {
    "  ████████████████████████████   ",
    "                          ████   ",
    "  ████    ████    ████    ████   ",
    "  ████    ████    ████    ████   ",
    "  ████    ████    ████████████   ",
    "  ████    ████    ████           ",
    "  ████    ████    ████           ",
    "                                 ",
    "                                 ",
    "                                 ",
  },
  buttons = {
    { txt = "󰄸   Projects", keys = "    󱁐 fp", cmd = "Telescope projects" },
    { txt = "󱙓   Live Grep", keys = "    󱁐 fw", cmd = "Telescope live_grep" },
    { txt = "   File History", keys = "    󱁐 fo", cmd = "Telescope oldfiles" },
    -- { txt = "   Find File", keys = "󱁐 ff", cmd = "Telescope find_files" },
    -- { txt = "󰛳   Connect Remote", keys = "󱁐 fv", cmd = "Telescope remote-sshfs" },
    -- { txt = "   File Manager", keys = "󱁐 fs", cmd = "SimplyFileOpen" },
    { txt = "   File Manager (Yazi)", keys = "    󱁐 fs", cmd = "Yazi" },

    -- { txt = " ", no_gap = true, rep = true },

    { txt = "󰞋   Help", keys = "    󱁐 fh", cmd = "Telescope help_tags" },
    { txt = "   Highlights", keys = "    󱁐 ft", cmd = "Telescope highlights" },

    -- { txt = " ", no_gap = true, rep = true },

    { txt = "󰪿   Keyboard Shortcuts", keys = "    󱁐 ch", cmd = "NvCheatsheet" },

    -- { txt = " ", no_gap = true, rep = true },

    { txt = "", hl = "NvDashFooter", no_gap = true, rep = true },
    {
      txt = function()
        local stats = require("lazy").stats()
        local ms = math.floor(stats.startuptime) .. " ms"
        return "   Loaded " .. stats.loaded .. " / " .. stats.count .. " plugins in " .. ms
      end,
      hl = "NvDashFooter",
      no_gap = true,
    },
    { txt = " ", hl = "NvDashFooter", no_gap = true, rep = true },
  },
}

M.base46 = {
  theme = "onedark",
  hl_add = {
    St_MusicInfo = { fg = "#FFFB54", bg = "#000000" },
    -- St_MusicState = { fg = "#FFFB54", bg = "#0a0d0f" },
    St_MusicState = { fg = "#FFFB54", bg = "#000000" },
    St_MusicSep = { fg = "#070707", bg = "#000000" },
  },
  hl_override = {
    Normal = { bg = User_bg },
    NormalNC = { bg = User_bg },
    NormalFloat = { bg = User_bg },
    FloatBorder = { fg = User_bg, bg = User_bg },
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
    St_CommandMode = { fg = User_bg, bg = "#ffffff" },
    St_CommandModeSep = { fg = "#ffffff", bg = "#ffffff" },
    St_InsertModeSep = { fg = "#D786D6", bg = "#D786D6" },
    St_NTerminalModeSep = { fg = "#D6D687", bg = "#D6D687" },
    St_ReplaceModeSep = { fg = "#FEAFAE", bg = "#FEAFAE" },
    St_TerminalModeSep = { fg = "#86D687", bg = "#86D687" },
    St_VisualModeSep = { fg = "#9D9DE5", bg = "#9D9DE5" },
    St_cwd_text = { fg = "#fe1a66", bg = "#2c141c" },
    St_cwd_icon = { fg = "#fe1a66", bg = "#2c141c" },
    St_cwd_sep = { fg = "#2c141c", bg = "#2c141c" },
    -- St_cwd_sep = { fg = "#1e030c", bg = "#1e030c" },
    St_file = { fg = "#61afaf", bg = "#0d021d" },
    St_file_sep = { fg = "#0d021d", bg = "#0d021d" },
    St_gitIcons = { bg = User_bg },
    St_pos_text = { bg = "#092f09" },
    St_pos_icon = { fg = "#001708" },
    St_pos_sep = { bg = "#001708" },
    -- St_Lsp = { bg = "#0d0f19" },
    St_Lsp = { fg = "#61afaf", bg = User_bg },
    St_LspMsg = { bg = User_bg },
    St_LspHints = { bg = User_bg },
    St_LspInfo = { bg = User_bg },
    St_lspError = { bg = User_bg },
    St_lspWarning = { bg = User_bg },
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

M.term = {
  winopts = { winfixbuf = true },
}

M.ui = {
  tabufline = {
    enabled = true,
    lazyload = true,
    order = { "buffers", "tabs", "btns" },
    overriden_modules = function(modules)
      table.insert(modules, modules[1]) -- adds nvimtree module ( its at index 1 ) , to end of the table
      table.remove(modules, 1) -- removes nvimtree module at index 1
    end,
  },
  statusline = {
    enabled = true,
    separator_style = "block",
    modules = {
      left_mode = function()
        return modules.left_mode()
      end,
      right_mode = function()
        return modules.right_mode()
      end,
      cwd = function()
        return modules.cwd()
      end,
      file = function()
        return modules.file()
      end,
      git = function()
        return modules.git()
      end,
      music_controls = function()
        return modules.music_controls()
      end,
      diagnostics = function()
        return modules.diagnostics()
      end,
      lsp = function()
        return modules.lsp()
      end,
      cursor = function()
        return modules.cursor()
      end,
    },
    order = {
      "left_mode",
      "cwd",
      "file",
      "git",
      "music_controls",
      "%=",
      "%=",
      "lsp_msg",
      "diagnostics",
      "lsp",
      "cursor",
      "right_mode",
    },
  },
}

return M
