return {
  'nvim-telescope/telescope.nvim', 
  branch = '0.1.x',
  dependencies = { 
    'nvim-lua/plenary.nvim',
    { 'nvim-telescope/telescope-fzf-native.nvim', build = 'make' },
    'nvim-tree/nvim-web-devicons'
  },
  config = function()
    local t = require("telescope")
    local a = require("telescope.actions")

    t.setup({
      defaults = {
        path_display = { "smart" },
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

    k.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>", { desc = "Fuzzy find files in cwd" })
    k.set("n", "<leader>fr", "<cmd>Telescope oldfiles<cr>", { desc = "Fuzzy find recent files" })
    k.set("n", "<leader>fs", "<cmd>Telescope live_grep<cr>", { desc = "Find string in cwd" })
    k.set("n", "<leader>fc", "<cmd>Telescope grep_string<cr>", { desc = "Find string under cursor in cwd" })

  end,
}
