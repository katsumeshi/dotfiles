require("nightfox").setup({
	options = {
		transparent = true,
		terminal_colors = true, -- Set terminal colors (vim.g.terminal_color_*) used in `:terminal`
	},
})

vim.cmd("colorscheme nightfox")
