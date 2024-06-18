return {
	"nvim-telescope/telescope.nvim",
	branch = "0.1.x",
	dependencies = {
		"nvim-lua/plenary.nvim",
		{ "nvim-telescope/telescope-fzf-native.nvim", build = "make" },
		"nvim-tree/nvim-web-devicons",
		"folke/todo-comments.nvim",
	},
	config = function()
		local t = require("telescope")
		local a = require("telescope.actions")

		t.setup({
			defaults = {
				path_display = { "absolute" }, -- "smart"
				mappings = {
					i = {
						["<C-k>"] = a.move_selection_previous, -- move to prev result
						["<C-j>"] = a.move_selection_next, -- move to next result
						["<C-q>"] = a.send_selected_to_qflist + a.open_qflist,
					},
				},
			},
		})

		t.load_extension("fzf")

		local k = vim.keymap -- for conciseness

		k.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
		k.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Find old files" })
		k.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find word" })
		k.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Fins todos" })
		k.set("n", "<leader>fj", "<cmd>Telescope jumplist<cr>", { desc = "Find jumplist" })
		k.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
		k.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find keymaps" })
		k.set("n", "<leader>fr", "<cmd>Telescope registers<cr>", { desc = "Find registers" })
		k.set("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Find quickfix" })
		k.set("n", "<leader>fm", "<cmd>Telescope marks<cr>", { desc = "Find marks" })
		k.set("n", "<leader>fgc", "<cmd>Telescope git_commits<cr>", { desc = "Find git commits" })
		k.set("n", "<leader>fgC", "<cmd>Telescope git_bcommits<cr>", { desc = "Find git buffers commits" })
		k.set("n", "<leader>fgb", "<cmd>Telescope git_branches<cr>", { desc = "Find git branchs" })
		k.set("n", "<leader>fgs", "<cmd>Telescope git_status<cr>", { desc = "Find git status" })
		k.set(
			"n",
			"<leader>f/",
			"<cmd>Telescope current_buffer_fuzzy_find<cr>",
			{ desc = "Find string in the current buffer" }
		)
	end,
}
