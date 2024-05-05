vim.g.mapleader = " "

local k = vim.keymap

k.set("i", "jk", "<ESC>")

k.set("n", "<leader>nh", ":nohl<CR>") -- clear search hilights

-- windows
k.set("n", "<leader>sv", "<C-w>v") -- split vertically
k.set("n", "<leader>sh", "<C-w>s") -- split horizontally
k.set("n", "<leader>se", "<C-w>=") -- make split eaual size
k.set("n", "<leader>sx", "<cmd>close<CR>") -- close 

-- tabs
k.set("n", "<leader>to", "<cmd>tabnew<CR>") 
k.set("n", "<leader>tx", "<cmd>tabclose<CR>") 
k.set("n", "<leader>tn", "<cmd>tabn<CR>") -- next tab 
k.set("n", "<leader>tp", "<cmd>tabp<CR>") -- previous tab
k.set("n", "<leader>tf", "<cmd>tabnew %<CR>") -- open with currrent buffer in new tab
