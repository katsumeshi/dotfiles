return {
  'akinsho/bufferline.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  version = "*",
  opts = {
    options = {
      mode = "tabs",
      separator_style = "thin", -- "slant" | "slope" | "thick" | "thin" | { 'any', 'any' },
      offsets = { { filetype = "NvimTree", } }
    }
  },
}
