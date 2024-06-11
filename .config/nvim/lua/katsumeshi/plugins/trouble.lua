return {
	"folke/trouble.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons", "folke/todo-comments.nvim" },
	opts = {}, -- for default options, refer to the configuration section for custom setup.
	cmd = "Trouble",
	keys = {
		{ "<leader>xx", "<cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics (Trouble)" },
		{ "<leader>xb", "<cmd>Trouble diagnostics toggle filter.buf=0<CR>", desc = "Buffer Diagnostics (Trouble)" },
		{
			"<leader>xl",
			"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
			desc = "LSP Definitions / references / ... (Trouble)",
		},
		{ "<leader>xq", "<cmd>Trouble qflist toggle<CR>", desc = "Quickfix List (Trouble)" },
		{ "<leader>xL", "<cmd>Trouble loclist toggle<CR>", desc = "Open trouble location list" },
		{ "<leader>xt", "<cmd>TodoTrouble<CR>", desc = "Open todos in trouble" },
	},
}
