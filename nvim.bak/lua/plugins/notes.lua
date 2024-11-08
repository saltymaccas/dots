return {
	{
		"epwalsh/obsidian.nvim",
		enabled = false,
		event = {
			-- If you want to use the home shortcut '~' here you need to call 'vim.fn.expand'.
			-- E.g. "BufReadPre " .. vim.fn.expand "~" .. "/my-vault/*.md"
			-- refer to `:h file-pattern` for more examples
			"BufReadPre "
				.. vim.fn.expand("~")
				.. "/notes/*.md",
			"BufNewFile " .. vim.fn.expand("~") .. "/notes/*.md",
		},

		dependencies = {
			"nvim-lua/plenary.nvim",
			"nvim-cmp",
			"nvim-telescope/telescope.nvim",
		},
		opts = {
			workspaces = {
				{
					name = "personal",
					path = "~/notes",
				},
			},
		},
		attachments = {
			img_name_func = function()
				return string.format("%s-", os.time())
			end,
		},
	},
}
