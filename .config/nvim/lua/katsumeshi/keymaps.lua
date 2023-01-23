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
map.set("n", "<leader>tp", ":tabp<CR>")

map.set("n", "<leader>e", ":Neotree<CR>")

-- telescope
map.set("n", "<leader>ff", "<cmd>Telescope find_files<cr>")
map.set("n", "<leader>fg", "<cmd>Telescope live_grep<cr>")
map.set("n", "<leader>fb", "<cmd>Telescope buffers<cr>")
map.set("n", "<leader>f?", "<cmd>Telescope help_tags<cr>")
map.set("n", "<leader>fh", "<<cmd>Telescope find_files hidden=true<cr>")

-- telescope git commands
map.set("n", "<leader>gc", "<cmd>Telescope git_commits<cr>")
map.set("n", "<leader>gfc", "<cmd>Telescope git_bcommits<cr>")
map.set("n", "<leader>gb", "<cmd>Telescope git_branches<cr>")
map.set("n", "<leader>gs", "<cmd>Telescope git_status<cr>")

-- lsp server
map.set("n", "<leader>rs", ":LspRestart<CR>")

-- buffer line
map.set("n", "<tab>", "<Cmd>BufferLineCycleNext<CR>")
map.set("n", "<S-Tab>", "<Cmd>BufferLineCyclePrev<CR>")
map.set("n", "<leader>bn", "<Cmd>BufferLineCycleNext<CR>")
map.set("n", "<leader>bp", "<Cmd>BufferLineCyclePrev<CR>")
map.set("n", "<leader>bd", "<Cmd>:bd<CR>")
map.set("n", "<leader>b1", "<Cmd>BufferLineGoToBuffer 1<CR>")
map.set("n", "<leader>b2", "<Cmd>BufferLineGoToBuffer 2<CR>")
map.set("n", "<leader>b3", "<Cmd>BufferLineGoToBuffer 3<CR>")
map.set("n", "<leader>b4", "<Cmd>BufferLineGoToBuffer 4<CR>")
map.set("n", "<leader>b5", "<Cmd>BufferLineGoToBuffer 5<CR>")
map.set("n", "<leader>b6", "<Cmd>BufferLineGoToBuffer 6<CR>")
map.set("n", "<leader>b7", "<Cmd>BufferLineGoToBuffer 7<CR>")
map.set("n", "<leader>b8", "<Cmd>BufferLineGoToBuffer 8<CR>")
map.set("n", "<leader>b9", "<Cmd>BufferLineGoToBuffer 9<CR>")

-- navigator
-- map.set("n", "<A-h>", "<Cmd>TmuxNavigateLeft<CR>")
-- map.set("n", "<A-j>", "<Cmd>TmuxNavigateDown<CR>")
-- map.set("n", "<A-k>", "<Cmd>TmuxNavigateUp<CR>")
-- map.set("n", "<A-l>", "<Cmd>TmuxNavigateRight<CR>")
-- map.set("n", "<A-Left>", "<Cmd>TmuxNavigateLeft<CR>")
-- map.set("n", "<A-Down>", "<Cmd>TmuxNavigateDown<CR>")
-- map.set("n", "<A-Up>", "<Cmd>TmuxNavigateUp<CR>")
-- map.set("n", "<A-Right>", "<Cmd>TmuxNavigateRight<CR>")
