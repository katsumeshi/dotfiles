vim.g.mapleader = " "

local keymap = vim.keymap

keymap.set("i", "jk", "<ESC>", { desc = "Exit insert mode with jk" })

keymap.set("n", "<leader>nh", ":nohl<CR>", { desc = "Clear search highlights" }) -- clear search hilights

-- windows
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" }) -- split vertically
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" }) -- split horizontally
keymap.set("n", "<leader>se", "<C-w>=", { desc = "Make splits equal size" }) -- make split eaual size
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" }) -- close
keymap.set("n", "<a-right>", "<C-w><", { desc = "Decrease the width of the current split" })
keymap.set("n", "<a-left>", "<C-w>>", { desc = "Increase the width of the current split" })
keymap.set("n", "<a-down>", "<C-w>+", { desc = "Increase the height of the current split" })
keymap.set("n", "<a-up>", "<C-w>-", { desc = "Decrease the height of the current split" })

-- tabs
keymap.set("n", "<leader>to", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "<leader>tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "<leader>tn", "<cmd>tabn<CR>", { desc = "Go to next tab" }) -- next tab
keymap.set("n", "<leader>tp", "<cmd>tabp<CR>", { desc = "Go to previous tab" }) -- previous tab
keymap.set("n", "<leader>tf", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" }) -- open with currrent buffer in new tab

-- buffers
keymap.set("n", "<c-p>", "<cmd>bprev<CR>", { desc = "Prev buffer" })
keymap.set("n", "<c-n>", "<cmd>bnext<CR>", { desc = "Next buffer" })
keymap.set("n", "<leader>bd", "<cmd>bdelete<CR>", { desc = "Delete buffer" })

-- moves
keymap.set("n", "<down>", "<cmd>m .+1<CR>==", { desc = "Move line down" })
keymap.set("n", "<up>", "<cmd>m .-2<CR>==", { desc = "Move line up" })
keymap.set("v", "<down>", "<cmd>m '>+1<CR>gv=gv", { desc = "Move line down" })
keymap.set("v", "<up>", "<cmd>m '<-2<CR>gv=gv", { desc = "Move line up" })
