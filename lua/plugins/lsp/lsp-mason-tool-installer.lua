return {
	"WhoIsSethDaniel/mason-tool-installer.nvim",
	config  = function()
    require('mason-tool-installer').setup {

      -- a list of all tools you want to ensure are installed at start
      ensure_installed = {
        'copilot-language-server',
        'phpstan',
        'actionlint',
        'angular-language-server',
        'ansible-language-server',
        'ansible-lint',
        'api-linter',
        'autotools-language-server',
        'bash-debug-adapter',
        'bash-language-server',
        'checkmake',
        'cmakelang',
        'cmakelint',
        'commitlint',
        'css-lsp',
        'css-variables-language-server',
        'cssmodules-language-server',
        'curlylint',
        'debugpy',
        'delve',
        'deno',
        'docker-compose-language-service',
        'docker-language-server',
        'dockerfile-language-server',
        'doctoc',
        'dotenv-linter',
        'easy-coding-standard',
        'editorconfig-checker',
        'emmet-language-server',
        'emmet-ls',
        'eslint-lsp',
        'eslint_d',
        'gh',
        'gh-actions-language-server',
        'gitlint',
        'gitui',
        'graphql-language-service-cli',
        'helm-ls',
        'html-lsp',
        'htmlbeautifier',
        'htmlhint',
        'htmx-lsp',
        'intelephense',
        'jq',
        'jq-lsp',
        'js-debug-adapter',
        'json-lsp',
        'json-to-struct',
        'jsonlint',
        'kotlin-debug-adapter',
        'kotlin-language-server',
        'kotlin-lsp',
        'kube-linter',
        'laravel-ls',
        'local-lua-debugger-vscode',
        'lua-language-server',
        'luacheck',
        'luaformatter',
        'markdown-oxide',
        'markdown-toc',
        'markdownlint',
        'markdownlint-cli2',
        'markmap-cli',
        'marksman',
        'mutt-language-server',
        'nginx-config-formatter',
        'npm-groovy-lint',
        'pgformatter',
        'php-cs-fixer',
        'php-debug-adapter',
        'phpactor',
        'phpcbf',
        'phpcs',
        'phpmd',
        'powershell-editor-services',
        'prettier',
        'prettierd',
        'pretty-php',
        'prettydiff',
        'python-lsp-server',
        'semgrep',
        'shellcheck',
        'shellharden',
        'some-sass-language-server',
        'sql-formatter',
        'sqlfluff',
        'sqlfmt',
        'sqlls',
        'standardjs',
        'stylelint',
        'stylelint-language-server',
        'stylua',
        'svelte-language-server',
        'systemd-lsp',
        'systemdlint',
        'tailwindcss-language-server',
        'termux-language-server',
        'terraform',
        'terraform-ls',
        'tree-sitter-cli',
        'ts-standard',
        'ts_query_ls',
        'twig-cs-fixer',
        'twigcs',
        'twiggy-language-server',
        'vim-language-server',
        'yaml-language-server',
        'yamlfix',
        'yamlfmt',
        'yamllint',
      },

      -- if set to true this will check each tool for updates. If updates
      -- are available the tool will be updated. This setting does not
      -- affect :MasonToolsUpdate or :MasonToolsInstall.
      -- Default: false
      auto_update = false,

      -- automatically install / update on startup. If set to false nothing
      -- will happen on startup. You can use :MasonToolsInstall or
      -- :MasonToolsUpdate to install tools and check for updates.
      -- Default: true
      run_on_start = true,

      -- set a delay (in ms) before the installation starts. This is only
      -- effective if run_on_start is set to true.
      -- e.g.: 5000 = 5 second delay, 10000 = 10 second delay, etc...
      -- Default: 0
      start_delay = 3000, -- 3 second delay

      -- Only attempt to install if 'debounce_hours' number of hours has
      -- elapsed since the last time Neovim was started. This stores a
      -- timestamp in a file named stdpath('data')/mason-tool-installer-debounce.
      -- This is only relevant when you are using 'run_on_start'. It has no
      -- effect when running manually via ':MasonToolsInstall' etc....
      -- Default: nil
      debounce_hours = 5, -- at least 5 hours between attempts to install/update

      -- By default all integrations are enabled. If you turn on an integration
      -- and you have the required module(s) installed this means you can use
      -- alternative names, supplied by the modules, for the thing that you want
      -- to install. If you turn off the integration (by setting it to false) you
      -- cannot use these alternative names. It also suppresses loading of those
      -- module(s) (assuming any are installed) which is sometimes wanted when
      -- doing lazy loading.
      integrations = {
        ['mason-lspconfig'] = true,
        ['mason-null-ls'] = false,
        ['mason-nvim-dap'] = false,
      },
    }
	end,
}
