return {
  "fbreckle/telescope-aws-accounts.nvim",
  config = function()
    require("telescope").load_extension("aws_accounts")
  end,
}
