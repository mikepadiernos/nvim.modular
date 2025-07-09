-- LazyDocker
-- Keymap("n", "<leader>ld", "<cmd>LazyDocker<CR>", { desc = "Toggle [L]azy[D]ocker", noremap = true, silent = true })
Keymap(
  "n",
  "<leader>ld",
  "<cmd>lua LazyDocker.toggle()<CR>",
  { desc = "Toggle [L]azy[D]ocker", noremap = true, silent = true }
)

-- LazyGit
Keymap(
  "n",
  "<leader>lg",
  ":lua require('tsugit').toggle()<cr>",
  { desc = "Toggle [L]azy[G]it", noremap = true, silent = true }
)
Keymap(
  "n",
  "<leader>ll",
  ":lua require('tsugit').toggle_for_file(absolutePath)<cr>",
  { desc = "[L]azyGit: [L]ist Commits", noremap = true, silent = true }
)
