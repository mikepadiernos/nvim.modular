local o = vim.opt

o.relativenumber = true

vim.api.nvim_create_autocmd("ColorScheme", {
  pattern = "*",
  callback = function()
    vim.opt.fillchars:append({ vert = " ", vertleft = " ", vertright = " ", verthoriz = " ", horiz = " " })
    vim.api.nvim_set_hl(0, "WinSeparator", { fg = "none", bg = "none" })
    vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "none", bg = "none" })
  end,
})

vim.schedule(function()
  vim.opt.fillchars:append({ vert = " ", vertleft = " ", vertright = " ", verthoriz = " ", horiz = " " })
  vim.api.nvim_set_hl(0, "WinSeparator", { fg = "none", bg = "none" })
  vim.api.nvim_set_hl(0, "NvimTreeWinSeparator", { fg = "none", bg = "none" })
end)

-- vim.cmd "colorscheme onedark"
