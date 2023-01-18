local setup, catppuccin = pcall(require, "catppuccin")
if not setup then
	return
end

catppuccin.setup({
	transparent_background = true,
})

vim.cmd("colorscheme catppuccin")
