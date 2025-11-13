return {
  "jay-babu/mason-nvim-dap.nvim",
  config = function()
    require("mason-nvim-dap").setup({
      ensure_installed = { "python", "delve" }
    })
  end,
}

