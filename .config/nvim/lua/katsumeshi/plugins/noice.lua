return {
	"folke/noice.nvim",
	event = "VeryLazy",
	opts = {},
	dependencies = {
		"MunifTanjim/nui.nvim",
		"rcarriga/nvim-notify",
	},
	config = function()
		local noice
		noice = noice.setup({
			views = {
				notify = { replace = true },
			},
		})

		vim.keymap.set("n", "<leader>nd", function()
			noice.cmd("dismiss")
		end)
	end,
}
