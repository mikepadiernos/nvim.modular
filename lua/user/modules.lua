local utils = require("user.utilities")

local M = {}

M.left_mode = function()
  if not utils.is_activewin() then
    return ""
  end

  local modes = utils.modes
  local m = vim.api.nvim_get_mode().mode
  local current_mode = "%#St_" .. modes[m][2] .. "Mode#  " .. modes[m][1]
  local mode_sep1 = "%#St_" .. modes[m][2] .. "ModeSep#" .. " "
  return current_mode .. mode_sep1 .. " "
end

M.right_mode = function()
  if not utils.is_activewin() then
    return ""
  end

  local modes = utils.modes
  local m = vim.api.nvim_get_mode().mode
  local current_mode = "%#St_" .. modes[m][2] .. "Mode# " .. "󱎥"
  local mode_sep1 = "%#St_" .. modes[m][2] .. "ModeSep#" .. " "
  return current_mode .. mode_sep1
end

M.cwd = function()
  local icon = "%#St_cwd_icon#" .. "󰉋 "
  local name = vim.uv.cwd()
  name = "%#St_cwd_text#" .. " " .. (name:match("([^/\\]+)[/\\]*$") or name) .. " "
  return (vim.o.columns > 85 and ("%#St_cwd_sep#" .. "  " .. icon .. name .. " ")) or ""
end

M.file = function()
  local x = utils.file()
  local name = " " .. x[2] .. ""
  return "%#St_file#  " .. x[1] .. name .. "%#St_file_sep#" .. "  "
end

M.git = function()
  return "%#St_gitIcons#" .. "" .. utils.git() .. ""
end

M.music_controls = function()
  local config = require("music-controls.config")
  local controls = require("music-controls.controls")

  local _player = config.config.default_player
  local state, title, artist = controls.current(_player)
  local state_info = string.format("%s", state)
  local music_info = string.format("%s - %s", artist, title)
  local music = "%#St_MusicSep#"
    .. ""
    .. " %#St_MusicState#"
    -- .. " "
    .. state_info
    .. " "
    .. "%#St_MusicSep#"
    -- .. " "
    .. "%#St_MusicInfo#"
    .. " "
    .. music_info
  if state_info == "Unknown" then
    return nil
  else
    return music
  end
end

M.diagnostics = function()
  if not utils.diagnostics() then
    return nil
  else
    local diag_block = "" .. utils.diagnostics() .. ""
    return diag_block
  end
end

M.lsp = function()
  if not utils.lsp() then
    return nil
  else
    local lsp_block = "%#St_Lsp#" .. utils.lsp() .. " "
    return lsp_block
  end
end

M.cursor = function()
  return "%#St_pos_sep#" .. "" .. "%#St_pos_icon#  %#St_pos_text#  %l ⬝ %v  "
end

return M
