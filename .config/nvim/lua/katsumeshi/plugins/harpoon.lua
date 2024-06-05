return {
	"ThePrimeagen/harpoon",
	branch = "harpoon2",
	dependencies = { "nvim-lua/plenary.nvim" },
	config = function()
		local harpoon = require("harpoon")

		-- REQUIRED
		harpoon:setup()
		-- REQUIRED
		--
		local conf = require("telescope.config").values

		-- local conf = require("telescope.config").values
		local function toggle_telescope(harpoon_files)
			local make_finder = function()
				local paths = {}
				for i = 1, harpoon_files:length() do
					if harpoon_files.items[i] ~= nil then
						table.insert(paths, harpoon_files.items[i].value)
					end
				end

				return require("telescope.finders").new_table({
					results = paths,
				})
			end

			require("telescope.pickers")
				.new({}, {
					prompt_title = "Harpoon",
					finder = make_finder(),
					previewer = conf.file_previewer({}),
					sorter = conf.generic_sorter({}),
					attach_mappings = function(prompt_buffer_number, map)
						-- The keymap you need
						map("i", "<c-d>", function()
							local state = require("telescope.actions.state")
							local selected_entry = state.get_selected_entry()
							local current_picker = state.get_current_picker(prompt_buffer_number)

							-- This is the line you need to remove the entry
							harpoon:list():remove(selected_entry)
							current_picker:refresh(make_finder())
						end)

						return true
					end,
				})
				:find()
		end

		vim.keymap.set("n", "<leader>ha", function()
			harpoon:list():add()
		end, { desc = "add harpoon" })
		vim.keymap.set("n", "<leader>hd", function()
			harpoon:list():remove()
		end, { desc = "delete harpoon" })

		vim.keymap.set("n", "<leader>hq", function()
			harpoon:list():select(1)
		end, { desc = "select harpoon 1" })
		vim.keymap.set("n", "<leader>hw", function()
			harpoon:list():select(2)
		end, { desc = "select harpoon 2" })
		vim.keymap.set("n", "<leader>he", function()
			harpoon:list():select(3)
		end, { desc = "select harpoon 3" })
		vim.keymap.set("n", "<leader>hr", function()
			harpoon:list():select(4)
		end, { desc = "select harpoon 4" })

		-- Toggle previous & next buffers stored within Harpoon list
		vim.keymap.set("n", "<C-p>", function()
			harpoon:list():prev()
		end)
		vim.keymap.set("n", "<C-n>", function()
			harpoon:list():next()
		end)

		vim.keymap.set("n", "<leader>fh", function()
			toggle_telescope(harpoon:list())
		end, { desc = "Open harpoon window" })
	end,
}
