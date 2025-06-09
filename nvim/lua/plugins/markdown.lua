return {
  {
    "mfussenegger/nvim-lint",
    opts = {
      linters = {
        ["markdownlint-cli2"] = {
          args = {
            "--config",
            vim.fn.stdpath("config") .. "/lua/plugins/cfg_linters/markdownlint-cli2.jsonc",
            "--",
          },
        },
      },
    },
  },
}
