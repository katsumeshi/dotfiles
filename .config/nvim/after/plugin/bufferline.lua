local bufferline_setup, bufferline = pcall(require, "bufferline")
if not bufferline_setup then
	return
end

local bufferline_hilights_setup, highlights = pcall(require, "catppuccin.groups.integrations.bufferline")
if not bufferline_hilights_setup then
	return
end

bufferline.setup({
	highlights = highlights.get(),
	options = {
		numbers = "ordinal",
	},
})
