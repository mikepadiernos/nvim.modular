return {
  "thevinchi/aws.nvim",
  lazy = false,
  dependencies = {
    "folke/snacks.nvim",
  },
  keys = {
    { "<leader>A", "", desc = "AWS" },
    { "<leader>Ar", "<cmd>AwSetRegion<CR>", desc = "Set default Region" },
    { "<leader>Ac", "", desc = "CloudWatch" },
    { "<leader>Acg", "<cmd>AwsCloudWatchTailGroup<CR>", desc = "Tail a Log Group" },
    { "<leader>AcG", "<cmd>AwsCloudWatchTailGroup interactive<CR>", desc = "Tail a Log Group interactively" },
    { "<leader>Acs", "<cmd>AwsCloudWatchTailStream<CR>", desc = "Tail a Log Stream" },
    { "<leader>AcS", "<cmd>AwsCloudWatchTailStream interactive<CR>", desc = "Tail a Log Stream interactively" },
    { "<leader>Acl", "<cmd>AwsCloudWatchTailShow<CR>", desc = "List live tails" },
  },
}
