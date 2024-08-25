return {
	{
		"folke/tokyonight.nvim",
		opts = {
			transparent = true,
			styles = {
				sidebars = "transparent",
				floats = "transparent",
			},
		},
	},
	{
		"catppuccin/nvim",
		name = "catppuccin",
		opts = {
			transparent_background = true,
		},
	},
	{ "Mofiqul/vscode.nvim" },
	{ "marko-cerovac/material.nvim" },
	{ "olimorris/onedarkpro.nvim" },
	{ "sainnhe/sonokai" },
	{ "craftzdog/solarized-osaka.nvim" },
	{
		"rose-pine/neovim",
		name = "rose-pine",
		opts = {
			styles = {
				transperency = true,
			},
		},
		config = function(_, opts)
			require("rose-pine").setup(opts)
		end,
	},
}
