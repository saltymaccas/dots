return {
  {
    "akinsho/bufferline.nvim",
    opts = {
      options = {
        seperator_style = "padded_slant",
        indicator = {
          style = "underline",
        },
      },
    },
  },
  {
    "folke/noice.nvim",
    enabled = false,
    opts = {
      cmdline = {
        enabled = false,
        view = "cmdline",
      },
    },
  },
  {
    "folke/snacks.nvim",
    opts = {
      dashboard = { enabled = false },
      terminal = {
        win = {
          width = 0.3,
          position = "right",
        },
      },
      ---@class snacks.image.Config
      image = {
        doc = {
          enabled = true,
          inline = false,
          float = true,
          conceal = true,
          max_width = 80,
          max_height = 40,
        },
      },
    },
  },
}
