return {
	{
		"iamcco/markdown-preview.nvim",
		cmd = { "MarkdownPreviewToggle", "MarkdownPreview", "MarkdownPreviewStop" },
		build = "cd app && yarn install",

		ft = { "markdown" },
		init = function()
			vim.g.mkdp_filetypes = { "markdown" }
			vim.g.mkdp_theme = "dark"
		end,
	},
	{
		"MeanderingProgrammer/markdown.nvim",
		-- enabled = false,
	},
	{
		"vhyrro/luarocks.nvim",
		priority = 1001, -- this plugin needs to run before anything else
		opts = {
			rocks = { "magick" },
		},
	},
}
