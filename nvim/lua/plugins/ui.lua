return {
  {
    "hat0uma/csvview.nvim",
    ---@module "csvview"
    ---@type CsvView.Options
    opts = {
      parser = { comments = { "#", "//" } },
      keymaps = {
        -- Text objects for selecting fields
        textobject_field_inner = { "if", mode = { "o", "x" } },
        textobject_field_outer = { "af", mode = { "o", "x" } },
        -- Excel-like navigation:
        -- Use <Tab> and <S-Tab> to move horizontally between fields.
        -- Use <Enter> and <S-Enter> to move vertically between rows and place the cursor at the end of the field.
        -- Note: In terminals, you may need to enable CSI-u mode to use <S-Tab> and <S-Enter>.
        jump_next_field_end = { "<Tab>", mode = { "n", "v" } },
        jump_prev_field_end = { "<S-Tab>", mode = { "n", "v" } },
        jump_next_row = { "<Enter>", mode = { "n", "v" } },
        jump_prev_row = { "<S-Enter>", mode = { "n", "v" } },
      },
    },
    cmd = { "CsvViewEnable", "CsvViewDisable", "CsvViewToggle" },
  },
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
