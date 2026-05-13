return {
  -- 1. Ensure the extra is imported
  { import = "lazyvim.plugins.extras.lang.typescript" },

  -- 2. Configure vtsls to use plugins for Lit intelligence
  {
    "neovim/nvim-lspconfig",
    opts = {
      servers = {
        vtsls = {
          settings = {
            typescript = {
              tsserver = {
                -- This enables completion/diagnostics for Lit tags
                pluginIds = { "ts-lit-plugin" },
              },
            },
          },
        },
      },
    },
  },

  -- 3. Force Tree-sitter to install parsers for highlighting/indenting
  {
    "nvim-treesitter/nvim-treesitter",
    opts = function(_, opts)
      if type(opts.ensure_installed) == "table" then
        vim.list_extend(opts.ensure_installed, { "css", "html", "javascript" })
      end
    end,
  },
}
