if vim.g.vscode then
	vim.cmd[[source $HOME/.config/nvim/vscode/settings.vim]]
else
	require("katsumeshi.core")
	require("katsumeshi.lazy")
end
