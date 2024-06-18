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
		local telescope = require("telescope")
		local actions = require("telescope.actions")

		telescope.setup({
			defaults = {
				path_display = { "absolute" }, -- "smart"
				mappings = {
					i = {
						["<C-k>"] = actions.move_selection_previous, -- move to prev result
						["<C-j>"] = actions.move_selection_next, -- move to next result
						["<C-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
						["<c-d>"] = actions.delete_buffer + actions.move_to_top,
					},
				},
			},
		})

		telescope.load_extension("fzf")

		local keymap = vim.keymap -- for conciseness

		keymap.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Find files" })
		keymap.set("n", "<leader>fo", "<cmd>Telescope oldfiles<cr>", { desc = "Find old files" })
		keymap.set("n", "<leader>fw", "<cmd>Telescope live_grep<cr>", { desc = "Find word" })
		keymap.set("n", "<leader>ft", "<cmd>TodoTelescope<cr>", { desc = "Fins todos" })
		keymap.set("n", "<leader>fj", "<cmd>Telescope jumplist<cr>", { desc = "Find jumplist" })
		keymap.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>", { desc = "Find buffers" })
		keymap.set("n", "<leader>fk", "<cmd>Telescope keymaps<cr>", { desc = "Find keymaps" })
		keymap.set("n", "<leader>fr", "<cmd>Telescope registers<cr>", { desc = "Find registers" })
		keymap.set("n", "<leader>fq", "<cmd>Telescope quickfix<cr>", { desc = "Find quickfix" })
		keymap.set("n", "<leader>fm", "<cmd>Telescope marks<cr>", { desc = "Find marks" })
		keymap.set("n", "<leader>fgc", "<cmd>Telescope git_commits<cr>", { desc = "Find git commits" })
		keymap.set("n", "<leader>fgC", "<cmd>Telescope git_bcommits<cr>", { desc = "Find git buffers commits" })
		keymap.set("n", "<leader>fgb", "<cmd>Telescope git_branches<cr>", { desc = "Find git branchs" })
		keymap.set("n", "<leader>fgs", "<cmd>Telescope git_status<cr>", { desc = "Find git status" })
		keymap.set(
			"n",
			"<leader>f/",
			"<cmd>Telescope current_buffer_fuzzy_find<cr>",
			{ desc = "Find string in the current buffer" }
		)
	end,
}
