return {
  {
    "lervag/vimtex",
    enable = false,
    config = function()
      vim.g.vimtex_view_method = "zathura"
    end,
  },
  { -- typst
    "chomosuke/typst-preview.nvim",
    enable = true,
    ft = "typst",
    opts = {
      -- open_cmd = "zathura %s",
    },
  },
}
