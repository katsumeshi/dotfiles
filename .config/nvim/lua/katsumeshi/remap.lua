vim.g.mapleader = " "

local map = vim.keymap

-- general
map.set("n", "<leader>pv", vim.cmd.Ex)
map.set("i", "jk", "<ESC>")
map.set("n", "<leader>nh", ":nohl<CR>")

-- split
map.set("n", "<leader>sv", "<C-w>v")
map.set("n", "<leader>sh", "<C-w>s")
map.set("n", "<leader>se", "<C-w>=")
map.set("n", "<leader>sw", ":close<CR>")

map.set("n", "<leader>to", ":tabnew<CR>")
map.set("n", "<leader>tw", ":tabclose<CR>")
map.set("n", "<leader>tn", ":tabn<CR>")
map.set("n", "<leader>tp", ":tabn<CR>")

map.set("n", "<leader>e", ":NvimTreeToggle<CR>")

-- telescope
map.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>") -- find files within current working directory, respects .gitignore
map.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>") -- find string in current working directory as you type
map.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>") -- list open buffers in current neovim instance
map.set("n", "<leader>fh", "<cmd>Telescope help_tags<cr>") -- list available help tags

-- telescope git commands
map.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>") -- list all git commits (use <cr> to checkout) ["gc" for git commits]
map.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>") -- list git commits for current file/buffer (use <cr> to checkout) ["gfc" for git file commits]
map.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>") -- list git branches (use <cr> to checkout) ["gb" for git branch]
map.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>") -- list current changes per file with diff preview ["gs" for git status]

-- restart lsp server
map.set("n", "<leader>rs", ":LspRestart<CR>") -- mapping to restart lsp if necessar

map.set("n", "<leader>t", "<cmd>ToggleTerm size=8 direction=horizontal<cr>")
