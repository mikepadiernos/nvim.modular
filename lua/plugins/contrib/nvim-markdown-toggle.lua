return {
  "roodolv/markdown-toggle.nvim",
  config = function()
    require("markdown-toggle").setup({
      -- If true, the auto-setup for the default keymaps is enabled
      use_default_keymaps = false,
      -- The keymaps are valid only for these filetypes
      filetypes = { "markdown", "markdown.mdx" },

      -- The list marks table used in cycle-mode (list_table[1] is used as the default list-mark)
      list_table = { "-", "+", "*", "=" },
      -- Cycle the marks in user-defined table when toggling lists
      cycle_list_table = false,

      -- The checkbox marks table used in cycle-mode (box_table[1] is used as the default checked-state)
      box_table = { "x", "~", "!", ">" },
      -- Cycle the marks in user-defined table when toggling checkboxes
      cycle_box_table = false,
      -- A bullet list is toggled before turning into a checkbox (similar to how it works in Obsidian).
      list_before_box = false,

      -- The heading marks table used in `markdown-toggle.heading`
      heading_table = { "#", "##", "###", "####", "#####" },

      -- Skip blank lines and headings in Visual mode (except for `quote()`)
      enable_blankhead_skip = true,
      -- Insert an indented quote for new lines within quoted text
      enable_inner_indent = false,
      -- Toggle only unmarked lines first
      enable_unmarked_only = true,
      -- Automatically continue lists on new lines
      enable_autolist = true,
      -- Maintain checkbox state when continuing lists
      enable_auto_samestate = false,
      -- Dot-repeat for toggle functions in Normal mode
      enable_dot_repeat = true,
    })
  end,
}
