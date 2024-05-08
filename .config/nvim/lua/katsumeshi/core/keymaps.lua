vim.g.mapleader = " "

local k = vim.keymap

k.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

k.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" }) -- clear search hilights

-- windows
k.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split vertically
k.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split horizontally
k.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split eaual size
k.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close 

-- tabs
k.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" }) 
k.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" }) 
k.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) -- next tab 
k.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) -- previous tab
k.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- open with currrent buffer in new tab
