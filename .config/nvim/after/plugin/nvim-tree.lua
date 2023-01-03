local setup, nvimtree = pcall(require, "nvim-tree")
if not setup then
  return
end


vim.g.loaded = 1
vim.g.loaded_newtrwPlugin = 1

vim.opt.termguicolors = true

nvimtree.setup()
