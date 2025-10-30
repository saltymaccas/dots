return {
  "emmanueltouzery/elixir-extras.nvim",
  ft = "elixir",
  dependencies = {
    "nvim-telescope/telescope.nvim",
  },
  keys = {
    {
      "<leader>ed",
      function()
        require("elixir-extras").elixir_view_docs({})
      end,
      desc = "Elixir View Docs",
    },
    {
      "<leader>em",
      function()
        require("elixir-extras").elixir_view_docs({ include_mix_libs = true })
      end,
      desc = "Elixir View Docs (mix libs)",
    },
    {
      "<leader>ec",
      function()
        require("elixir-extras").module_complete()
      end,
      desc = "Elixir Module Complete",
    },
  },
}
