return {
  -- Required to have lua-rocks loaded first
  {
    name = "lua-rocks",
    "vhyrro/luarocks.nvim",
    require("plugins.contrib.nvim-luarocks"),
  },
  -- All other modules loaded in alphabetical order
  {
    name = "aerial",
    "stevearc/aerial.nvim",
    require("plugins.contrib.nvim-aerial"),
  },
  -- {
  --   name = "alien",
  --   "joeyfitzpatrick/alien.nvim",
  --   require("plugins.contrib.nvim-alien"),
  -- },
  {
    name = "arrow",
    "otavioschwanck/arrow.nvim",
    require("plugins.contrib.nvim-arrow"),
  },
  -- {
  --   name = "asdf",
  --   "bry-guy/asdf-lsp.nvim",
  --   require "plugins.contrib.nvim-asdf",
  -- },
  {
    name = "autoclose",
    "m4xshen/autoclose.nvim",
    require("plugins.contrib.nvim-autoclose"),
  },
  {
    name = "autosave",
    "0x00-ketsu/autosave.nvim",
    require("plugins.contrib.nvim-autosave"),
  },
  {
    name = "barbecue",
    "utilyre/barbecue.nvim",
    require("plugins.contrib.nvim-barbecue"),
  },
  {
    name = "better-comments",
    "Djancyp/better-comments.nvim",
    require("plugins.contrib.nvim-better-comments"),
  },
  {
    name = "better-escape",
    "max397574/better-escape.nvim",
    require("plugins.contrib.nvim-better-escape"),
  },
  {
    name = "betterquit",
    "Dillonb/betterquit.nvim",
    require("plugins.contrib.nvim-betterquit"),
  },
  -- {
  --   name = "bigfile",
  --   "LunarVim/bigfile.nvim",
  --   require("plugins.contrib.nvim-bigfile"),
  -- },
  -- {
  --   name = "bunnyhop",
  --   "PLAZMAMA/bunnyhop.nvim",
  --   require "plugins.contrib.nvim-bunnyhop",
  -- },
  {
    name = "ccc",
    "uga-rosa/ccc.nvim",
    require("plugins.contrib.nvim-ccc"),
  },
  {
    name = "clipboard-history",
    "royanirudd/clipboard-history.nvim",
    require("plugins.contrib.nvim-clipboard-history"),
  },
  -- {
  --   name = "cmus",
  --   "cmus-enjoyers/cmus.nvim",
  --   require("plugins.contrib.nvim-cmus"),
  -- },
  {
    name = "colorizer",
    "norcalli/nvim-colorizer.lua",
    require("plugins.contrib.nvim-colorizer"),
  },
  {
    name = "colorpicker",
    "tribhuwan-kumar/NVIMColorPicker",
    require("plugins.contrib.nvim-colorpicker"),
  },
  {
    name = "commander",
    "FeiyouG/commander.nvim",
    require("plugins.contrib.nvim-commander"),
  },
  {
    name = "composer",
    "RVxLab/composer.nvim",
    require("plugins.contrib.nvim-composer"),
  },
  {
    name = "conform",
    "stevearc/conform.nvim",
    require("plugins.contrib.nvim-conform"),
  },
  {
    name = "ctrlsf",
    "dyng/ctrlsf.vim",
    require("plugins.contrib.nvim-ctrlsf"),
  },
  {
    name = "ctrlsf-ui",
    "P4Cu/ctrlsf-ui.nvim",
    require("plugins.contrib.nvim-ctrlsf-ui"),
  },
  {
    name = "devtools",
    "muhfaris/devtools.nvim",
    require("plugins.contrib.nvim-devtools"),
  },
  {
    name = "dial",
    "monaqa/dial.nvim",
    require("plugins.contrib.nvim-dial"),
  },
  {
    name = "diffview",
    "sindrets/diffview.nvim",
    require("plugins.contrib.nvim-diffview"),
  },
  {
    name = "direnv",
    "NotAShelf/direnv.nvim",
    require("plugins.contrib.nvim-direnv"),
  },
  {
    name = "dressing",
    "stevearc/dressing.nvim",
    require("plugins.contrib.nvim-dressing"),
  },
  {
    name = "dropbar",
    "Bekaboo/dropbar.nvim",
    require("plugins.contrib.nvim-dropbar"),
  },
  {
    name = "early-retirement",
    "chrisgrieser/nvim-early-retirement",
    require("plugins.contrib.nvim-early-retirement"),
  },
  {
    name = "easyword",
    "vanaigr/easyword.nvim",
    require("plugins.contrib.nvim-easyword"),
  },
  {
    name = "emmet",
    "olrtg/nvim-emmet",
    require("plugins.contrib.nvim-emmet"),
  },
  {
    name = "eyeliner",
    "jinh0/eyeliner.nvim",
    require("plugins.contrib.nvim-eyeliner"),
  },
  {
    name = "faster",
    "pteroctopus/faster.nvim",
    require("plugins.contrib.nvim-faster"),
  },
  {
    name = "fidget",
    "j-hui/fidget.nvim",
    require("plugins.contrib.nvim-fidget"),
  },
  {
    name = "firenvim",
    "glacambre/firenvim",
    require("plugins.contrib.nvim-firenvim"),
  },
  {
    name = "foldline",
    "DrDimon/nvim-foldline",
    require("plugins.contrib.nvim-foldline"),
  },
  {
    name = "formatter",
    "seblyng/nvim-formatter",
    require("plugins.contrib.nvim-formatter"),
  },
  {
    name = "gitignore",
    "wintermute-cell/gitignore.nvim",
    require("plugins.contrib.nvim-gitignore"),
  },
  {
    name = "grug-far",
    "MagicDuck/grug-far.nvim",
    require("plugins.contrib.nvim-grug-far"),
  },
  {
    name = "guess-indent",
    "nmac427/guess-indent.nvim",
    require("plugins.contrib.nvim-guess-indent"),
  },
  {
    name = "highlightcolors",
    'brenoprata10/nvim-highlight-colors',
    require("plugins.contrib.nvim-highlightcolors"),
  },
  {
    name = "image",
    "3rd/image.nvim",
    require("plugins.contrib.nvim-image"),
  },
  {
    name = "img-clip",
    "HakonHarnes/img-clip.nvim",
    require("plugins.contrib.nvim-img-clip"),
  },
  {
    name = "inc-rename",
    "smjonas/inc-rename.nvim",
    require("plugins.contrib.nvim-inc-rename"),
  },
  {
    name = "json",
    "Sup3Legacy/json.nvim",
    require("plugins.contrib.nvim-json"),
  },
  {
    name = "lazydev",
    "folke/lazydev.nvim",
    require("plugins.contrib.nvim-lazydev"),
  },
  {
    name = "lazydocker",
    "crnvl96/lazydocker.nvim",
    require("plugins.contrib.nvim-lazydocker"),
  },
  {
    name = "lint",
    "mfussenegger/nvim-lint",
    require("plugins.contrib.nvim-lint"),
  },
  {
    name = "mapx",
    "b0o/mapx.nvim",
    require("plugins.contrib.nvim-mapx"),
  },
  {
    name = "markdown",
    "MeanderingProgrammer/render-markdown.nvim",
    require("plugins.contrib.nvim-markdown"),
  },
  {
    name = "markdown-toggle",
    "roodolv/markdown-toggle.nvim",
    require("plugins.contrib.nvim-markdown-toggle"),
  },
  {
    name = "marknav",
    "daenikon/marknav.nvim",
    require("plugins.contrib.nvim-marknav"),
  },
  {
    name = "marks",
    "chentoast/marks.nvim",
    require("plugins.contrib.nvim-marks"),
  },
  {
    name = "marksman",
    "artempyanykh/marksman",
    require("plugins.contrib.nvim-marksman"),
  },
  -- {
  --   name = "markspace",
  --   "amarz45/nvim-markspace",
  --   require("plugins.contrib.nvim-markspace"),
  -- },
  -- {
  --   name = "markview",
  --   "OXY2DEV/markview.nvim",
  --   require("plugins.contrib.nvim-markview"),
  -- },
  -- {
  --   name = "md-img-insert",
  --   "junaydb/md-img-insert.nvim",
  --   require "plugins.contrib.nvim-md-img-insert",
  -- },
  {
    name = "mint",
    "gabrielfruet/mint.nvim",
    require("plugins.contrib.nvim-mint"),
  },
  {
    name = "mistake",
    "ck-zhang/mistake.nvim",
    require("plugins.contrib.nvim-mistake"),
  },
  {
    name = "modicator",
    "mawkler/modicator.nvim",
    require("plugins.contrib.nvim-modicator"),
  },
  {
    name = "multicursor",
    "jake-stewart/multicursor.nvim",
    require("plugins.contrib.nvim-multicursor"),
  },
  {
    name = "music-controls",
    "AntonVanAssche/music-controls.nvim",
    require("plugins.contrib.nvim-music-controls"),
  },
  {
    name = "namespace",
    "ccaglak/namespace.nvim",
    require("plugins.contrib.nvim-namespace"),
  },
  {
    name = "neoclip",
    "AckslD/nvim-neoclip.lua",
    require("plugins.contrib.nvim-neoclip"),
  },
  {
    name = "neocolumn",
    "parmeniong/neocolumn.nvim",
    require("plugins.contrib.nvim-neocolumn"),
  },
  {
    name = "neogen",
    "danymat/neogen",
    require("plugins.contrib.nvim-neogen"),
  },
  {
    name = "neogit",
    "NeogitOrg/neogit",
    require("plugins.contrib.nvim-neogit"),
  },
  {
    name = "neominimap",
    "Isrothy/neominimap.nvim",
    require("plugins.contrib.nvim-neominimap"),
  },
  {
    name = "neoscroll",
    "karb94/neoscroll.nvim",
    require("plugins.contrib.nvim-neoscroll"),
  },
  {
    name = "neotab",
    "kawre/neotab.nvim",
    require("plugins.contrib.nvim-neotab"),
  },
  -- {
  --   name = "neowords",
  --   "backdround/neowords.nvim",
  --   require "plugins.contrib.nvim-neowords",
  -- },
  {
    name = "noice",
    "folke/noice.nvim",
    require("plugins.contrib.nvim-noice"),
  },
  {
    name = "none-ls",
    "nvimtools/none-ls.nvim",
    require("plugins.contrib.nvim-nonels"),
  },
  {
    name = "nui-components",
    "grapp-dev/nui-components.nvim",
    require("plugins.contrib.nvim-nui-components"),
  },
  {
    name = "null-ls",
    "brain-fuel/null-ls.nvim",
    require("plugins.contrib.nvim-null-ls"),
  },
  {
    name = "overseer",
    "stevearc/overseer.nvim",
    require("plugins.contrib.nvim-overseer"),
  },
  {
    name = "paste",
    "kjwsl/paste.nvim",
    require("plugins.contrib.nvim-paste"),
  },
  {
    name = "pathfinder",
    "HawkinsT/pathfinder.nvim",
    require("plugins.contrib.nvim-pathfinder"),
  },
  {
    name = "persistent-breakpoints",
    "Weissle/persistent-breakpoints.nvim",
    require("plugins.contrib.nvim-persistent-breakpoints"),
  },
  {
    name = "praise",
    "theoboldalex/praise.nvim",
    require("plugins.contrib.nvim-praise"),
  },
  {
    name = "precognition",
    "tris203/precognition.nvim",
    require("plugins.contrib.nvim-precognition"),
  },
  {
    name = "project",
    "ahmedkhalf/project.nvim",
    require("plugins.contrib.nvim-project"),
  },
  -- {
  --   name = "proot",
  --   "zongben/proot.nvim",
  --   require("plugins.contrib.nvim-proot"),
  -- },
  {
    name = "rainbow-delimiters",
    "HiPhish/rainbow-delimiters.nvim",
    require("plugins.contrib.nvim-rainbow-delimiters"),
  },
  -- {
  --   name = "remote-nvim",
  --   "amitds1997/remote-nvim.nvim",
  --   require("plugins.contrib.nvim-remote"),
  -- },
  {
    name = "renamer",
    "filipdutescu/renamer.nvim",
    require("plugins.contrib.nvim-renamer"),
  },
  {
    name = "sak",
    "rdpopov/nvim-sak",
    require("plugins.contrib.nvim-sak"),
  },
  {
    name = "scope",
    "tiagovla/scope.nvim",
    require("plugins.contrib.nvim-scope"),
  },
  {
    name = "scratch",
    "LintaoAmons/scratch.nvim",
    require("plugins.contrib.nvim-scratch"),
  },
  {
    name = "scrollview",
    "dstein64/nvim-scrollview",
    require("plugins.contrib.nvim-scrollview"),
  },
  {
    name = "search-replace",
    "roobert/search-replace.nvim",
    require("plugins.contrib.nvim-search-replace"),
  },
  {
    name = "select-multi-line",
    "Rasukarusan/nvim-select-multi-line",
    require("plugins.contrib.nvim-select-multi-line"),
  },
  {
    name = "sensible",
    "basilgood/nvim-sensible",
    require("plugins.contrib.nvim-sensible"),
  },
  {
    name = "sessions",
    "natecraddock/sessions.nvim",
    require("plugins.contrib.nvim-sessions"),
  },
  {
    name = "session-manager",
    "The-Plottwist/nvim-session-manager",
    require("plugins.contrib.nvim-session-manager"),
  },
  {
    name = "showkeys",
    "nvzone/showkeys",
    require("plugins.contrib.nvim-showkeys"),
  },
  -- {
  --   name = "sidebar",
  --   "michaelpadiernos-forks/sidebar.nvim",
  --   require("plugins.contrib.nvim-sidebar"),
  -- },
  -- {
  --   name = "smart-motion",
  --   "FluxxField/smart-motion.nvim",
  --   require "plugins.contrib.nvim-smart-motion",
  -- },
  {
    name = "smart-splits",
    "mrjones2014/smart-splits.nvim",
    require("plugins.contrib.nvim-smart-splits"),
  },
  -- {
  --   name = "smear-cursor",
  --   "sphamba/smear-cursor.nvim",
  --   require("plugins.contrib.nvim-smear-cursor"),
  -- },
  -- {
  --   name = "snacks",
  --   "folke/snacks.nvim",
  --   require "plugins.contrib.nvim-snacks",
  -- },
  {
    name = "stay-centered",
    "arnamak/stay-centered.nvim",
    require("plugins.contrib.nvim-stay-centered"),
  },
  {
    name = "sudo",
    "denialofsandwich/sudo.nvim",
    require("plugins.contrib.nvim-sudo"),
  },
  {
    name = "suedit",
    "Grafcube/suedit.nvim",
    require("plugins.contrib.nvim-suedit"),
  },
  {
    name = "switch-project",
    "raresica1234/switch-project.nvim",
    require("plugins.contrib.nvim-switch-project"),
  },
  {
    name = "tide",
    "jackMort/tide.nvim",
    require("plugins.contrib.nvim-tide"),
  },
  {
    name = "tmuxer",
    "dkooll/tmuxer.nvim",
    require("plugins.contrib.nvim-tmuxer"),
  },
  {
    name = "todo-comments",
    "folke/todo-comments.nvim",
    require("plugins.contrib.nvim-todo-comments"),
  },
  {
    name = "toggleterm",
    "akinsho/toggleterm.nvim",
    require("plugins.contrib.nvim-toggleterm"),
  },
  {
    name = "tree",
    "nvim-tree/nvim-tree.lua",
    require("plugins.contrib.nvim-tree"),
  },
  {
    name = "tree-remote",
    "kiyoon/nvim-tree-remote.nvim",
    require("plugins.contrib.nvim-tree-remote"),
  },
  {
    name = "treesj",
    "Wansmer/treesj",
    require("plugins.contrib.nvim-treesj"),
  },
  -- {
  --   name = "treewalker",
  --   "aaronik/treewalker.nvim",
  --   require "plugins.contrib.nvim-treewalker",
  -- },
  {
    name = "trouble",
    "folke/trouble.nvim",
    require("plugins.contrib.nvim-trouble"),
  },
  {
    name = "tsugit",
    "mikavilpas/tsugit.nvim",
    require("plugins.contrib.nvim-tsugit"),
  },
  {
    name = "twilight",
    "folke/twilight.nvim",
    require("plugins.contrib.nvim-twilight"),
  },
  {
    name = "ufo",
    "kevinhwang91/nvim-ufo",
    require("plugins.contrib.nvim-ufo"),
  },
  {
    name = "ultimate-autopair",
    "altermo/ultimate-autopair.nvim",
    require("plugins.contrib.nvim-ultimate-autopair"),
  },
  {
    name = "unception",
    "samjwill/nvim-unception",
    require("plugins.contrib.nvim-unception"),
  },
  {
    name = "undotree",
    "jiaoshijie/undotree",
    require("plugins.contrib.nvim-undotree"),
  },
  {
    name = "valign",
    "riku-ri/valign.nvim",
    require("plugins.contrib.nvim-valign"),
  },
  {
    name = "visual-whitespace",
    "mcauley-penney/visual-whitespace.nvim",
    require("plugins.contrib.nvim-visual-whitespace"),
  },
  {
    name = "vs-tasks",
    "EthanJWright/vs-tasks.nvim",
    require("plugins.contrib.nvim-vs-tasks"),
  },
  -- {
  --   name = "vshow",
  --   "oxtna/vshow.nvim",
  --   require("plugins.contrib.nvim-vshow"),
  -- },
  -- {
  --   name = "whitespace",
  --   "johnfrankmorgan/whitespace.nvim",
  --   require("plugins.contrib.nvim-whitespace"),
  -- },
  -- {
  --   name = "wormhole",
  --   "irohn/wormhole.nvim",
  --   require "plugins.contrib.nvim-wormhole",
  -- },
  {
    name = "wrapping",
    "andrewferrier/wrapping.nvim",
    require("plugins.contrib.nvim-wrapping"),
  },
  {
    name = "wrapwords",
    "GabrielNatucci/wrapwords.nvim",
    require("plugins.contrib.nvim-wrapwords"),
  },
  {
    name = "yanky",
    "gbprod/yanky.nvim",
    require("plugins.contrib.nvim-yanky"),
  },
  {
    name = "yazi",
    "mikavilpas/yazi.nvim",
    require("plugins.contrib.nvim-yazi"),
  },
  {
    name = "yeet",
    "samharju/yeet.nvim",
    require("plugins.contrib.nvim-yeet"),
  },
  -- {
  --   name = "zebrazone",
  --   "notomo/zebrazone.nvim",
  --   require "plugins.contrib.nvim-zebrazone",
  -- },
  -- {
  --   name = "zen-mode",
  --   "folke/zen-mode.nvim",
  --   require("plugins.contrib.nvim-zen-mode"),
  -- },
}
