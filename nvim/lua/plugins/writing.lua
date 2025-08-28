return {
  {
    "lervag/vimtex",
    config = function()
      vim.g.vimtex_view_method = "zathura"
    end,
  },
  { -- typst
    "chomosuke/typst-preview.nvim",
    enable = false,
    ft = "typst",
    opts = {},
  },
}
