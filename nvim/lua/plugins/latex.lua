return {
	-- Set pdf viewer to zathura
	{
		"lervag/vimtex",
		lazy = true,
		init = function()
			vim.g.vimtex_view_method = "zathura"
		end,
	},
}
