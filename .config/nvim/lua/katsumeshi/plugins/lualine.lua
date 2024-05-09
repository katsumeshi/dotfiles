return {
  'nvim-lualine/lualine.nvim',
   dependencies = { 'nvim-tree/nvim-web-devicons' },
   config = function ()
     local l = require('lualine')

     l.setup({
          options = {
              theme = "catppuccin"
              -- ... the rest of your lualine config
          }
      })
   end
}
