local map = vim.keymap.set

return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    {
      "JMarkin/nvim-tree.lua-float-preview",
      lazy = true,
      -- default
      opts = {
        -- Whether the float preview is enabled by default. When set to false, it has to be "toggled" on.
        toggled_on = true,
        -- wrap nvimtree commands
        wrap_nvimtree_commands = true,
        -- lines for scroll
        scroll_lines = 20,
        -- window config
        window = {
          style = "minimal",
          relative = "win",
          border = "none",
          wrap = false,
        },
        mapping = {
          -- scroll down float buffer
          down = { "<C-d>" },
          -- scroll up float buffer
          up = { "<C-e>", "<C-u>" },
          -- enable/disable float windows
          toggle = { "<C-x>" },
        },
        -- hooks if return false preview doesn't shown
        hooks = {
          pre_open = function(path)
            -- if file > 5 MB or not text -> not preview
            local size = require("float-preview.utils").get_size(path)
            if type(size) ~= "number" then
              return false
            end
            local is_text = require("float-preview.utils").is_text(path)
            return size < 5 and is_text
          end,
          post_open = function(bufnr)
            return true
          end,
        },
      },
    },
  },
  cmd = { "NvimTreeToggle", "NvimTreeFocus" },
  config = function(_)
    local nvtree = require("nvim-tree")
    local api = require("nvim-tree.api")

    local function label(path)
      path = path:gsub(os.getenv("HOME"), "~", 1)
      return path:gsub("([a-zA-Z])[a-z0-9]+", "%1") .. (path:match("[a-zA-Z]([a-z0-9]*)$") or "")
    end

    -- Add custom mappings
    local function custom_on_attach(bufnr)
      local function opts(desc)
        return {
          desc = "nvim-tree: " .. desc,
          buffer = bufnr,
          noremap = true,
          silent = true,
          nowait = true,
        }
      end

      api.config.mappings.default_on_attach(bufnr)
      map("n", "+", api.tree.change_root_to_node, opts("CD"))
      map("n", "?", api.tree.toggle_help, opts("Help"))
      map("n", "<ESC>", api.tree.close, opts("Close"))
    end

    -- Automatically open file upon creation
    api.events.subscribe(api.events.Event.FileCreated, function(file)
      vim.cmd("edit " .. file.fname)
    end)

    nvtree.setup({
      on_attach = custom_on_attach,
      sync_root_with_cwd = true,
      respect_buf_cwd = true,
      sort = {
        sorter = "case_sensitive",
      },
      update_focused_file = {
        enable = true,
        update_root = true,
      },
      view = {
        width = 45,
        side = "right",
      },
      renderer = {
        -- root_folder_label = ":~:s?$?/..?",
        -- group_empty = false,
        root_folder_label = label,
        group_empty = label,
        indent_markers = {
          enable = true,
          icons = {
            -- corner = "└",
            -- edge = "│",
            -- item = "├",
            corner = " ",
            edge = " ",
            item = " ",
            none = " ",
          },
        },
        icons = {
          git_placement = "signcolumn",
          modified_placement = "before",
          hidden_placement = "signcolumn",
          diagnostics_placement = "signcolumn",
          bookmarks_placement = "signcolumn",
          padding = " ",
          symlink_arrow = " ➛  ",
          show = {
            file = true,
            folder = true,
            folder_arrow = false,
            git = true,
            modified = true,
            hidden = true,
            diagnostics = true,
            bookmarks = true,
          },
          glyphs = {
            default = "",
            symlink = "",
            bookmark = "󰆤",
            modified = "●",
            hidden = "󰜌",
            git = {
              unstaged = "",
              staged = "",
              unmerged = "",
              renamed = "",
              untracked = "",
              deleted = "",
              ignored = "",
            },
          },
        },
      },
      diagnostics = {
        icons = {
          hint = "",
          info = "",
          warning = "",
          error = "",
        },
      },
      filters = {
        dotfiles = false,
        git_ignored = false,
        custom = { "^.git$", "^\\.cache$", "^.vscode$", "^.idea" },
      },
      filesystem_watchers = {
        ignore_dirs = { "node_modules", "vendor" },
      },
    })
  end,
}
