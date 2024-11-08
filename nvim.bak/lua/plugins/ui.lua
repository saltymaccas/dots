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
	},
	{
		"nvimdev/dashboard-nvim",
		enabled = false,
	},
	{ "3rd/image.nvim", enabled = false },
	{
		"3rd/diagram.nvim",
		enabled = false,
		dependencies = {
			"3rd/image.nvim",
		},
		opts = { -- you can just pass {}, defaults below
			renderer_options = {
				mermaid = {
					background = "transparent", -- nil | "transparent" | "white" | "#hex"
					theme = "dark", -- nil | "default" | "dark" | "forest" | "neutral"
					scale = 1, -- nil | 1 (default) | 2  | 3 | ...
				},
				plantuml = {
					charset = nil,
				},
				d2 = {
					theme_id = nil,
					dark_theme_id = nil,
					scale = nil,
					layout = nil,
					sketch = nil,
				},
			},
		},
	},
}
