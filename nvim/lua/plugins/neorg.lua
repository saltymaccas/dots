return {
	{
		"nvim-cmp",
		--param opts cmp.ConfigSchema
		opts = function(_, opts)
			table.insert(opts.sources, { name = "neorg" })
		end,
	},
	{
		"nvim-neorg/neorg",
		version = "*",
		lazy = false,
		ft = "norg",
		dependencies = {
			"nvim-cmp",
			"nvim-treesitter",
			"nvim-neorg/lua-utils.nvim",
			"pathlib.nvim",
			"nvim-nio",
		},
		config = function()
			require("neorg").setup({
				load = {
					["core.integrations.treesitter"] = {},
					["core.defaults"] = {},
					["core.concealer"] = {},
					["core.completion"] = { config = { engine = "nvim-cmp" } },
					["core.latex.renderer"] = {},
					["core.ui.calendar"] = {},
					["core.dirman"] = {
						config = {
							workspaces = {
								notes = "~/notes",
							},
							default_workspace = "notes",
						},
					},
				},
			})

			vim.wo.foldlevel = 99
			vim.wo.conceallevel = 2
		end,
	},
}
