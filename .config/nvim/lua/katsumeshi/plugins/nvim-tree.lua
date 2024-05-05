return {
  "nvim-tree/nvim-tree.lua",
  dependencies = "nvim-tree/nvim-web-devicons",
  config = function()
    local n = require("nvim-tree")

    vim.g.loaded_netrw = 1
    vim.g.loaded_netrwPlugin = 1

    n.setup({})

    local k = vim.keymap

    k.set("n", "<leader>ef", "<cmd>NvimTreeFindFileToggle<CR>") -- toggle file explorer on current file
    k.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>") -- collapse file explorer
    k.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>") -- refresh file explorer

  end
}
