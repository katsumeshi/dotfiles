local setup, neotree = pcall(require, "neo-tree")
if not setup then
	return
end

neotree.setup({
	filesystem = {
		follow_current_file = true,
		filtered_items = {
			show_hidden_count = false,
			hide_dotfiles = false,
			hide_gitignored = false,
		},
		use_libuv_file_watcher = true,
	},
	buffers = {
		follow_current_file = true,
		show_unloaded = true,
	},
	source_selector = {
		winbar = true,
	},
	window = {
		position = "left",
		width = 40,
	},
})
